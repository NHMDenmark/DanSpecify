# Upgrading Specify7

## Before upgrading 

Log in to the server with SSH. 
```
ssh <YOUR_KUID>@<SERVER_ADDRESS> 
```

Switch to the specify user and go to specify directory 
```
su specify 
cd ~ 
```

Create a directory for the new version and cd into it 
```
mkdir versions/v<VERSION_NUMBER> 
cd versions/v<VERSION_NUMBER> 
```
Clone the Specify7 repository 
```
git clone git://github.com/specify/specify7.git 
```
Create a local config file by copying the default config file 
```
cp specify7/specifyweb/settings/specify_settings.py specify7/specifyweb/settings/local_specify_settings.py 
```
Edit the config file to fit current installation 
```
vim specify7/specifyweb/settings/local_specify_settings.py 
```
Since you’re upgrading, the Red Hat Enterprise Linux (RHEL) instance will have most of the dependencies installed already. 
However, you could make sure openldap, which has been needed since 7.3.1, is installed: 
```
sudo yum install openldap-devel 
```
## Installing the latest version

First create a Python virtual environment 
```
python3 -m venv specify7/ve 
``` 
Enter the specify7 directory 
```
cd specify7 
```
RHEL requires you to enable NPM explicitly 
```
scl enable rh-nodejs4 bash 
```
You can check whether it is enabled by asking for the version number 
```
npm -v 
``` 
Activate the virtual environment:  
```
source ve/bin/activate 
```
Upgrade pip and explicitly make sure the needed requirements are installed:  
```
pip3 install --upgrade pip  
pip3 install -r requirements.txt 
```
Finally, run the make command and exit the virtual environment:  
```
make 
deactivate 
```
Check the Apache ssl config file: 
```
less /etc/httpd/conf.d/ssl.conf 
```
Make sure that the lines referencing to the Python virtual environment point to the currentversion symlink, e.g.:   
```
WSGIPythonHome /home/specify/currentversion/specify7/ve 
```
Now update the symlink to point currentversion to the latest version:  
```
cd ~ 
ln -sfn /home/specify/versions/v7.5.0 currentversion 
```
Also remember to upgrade Specify 6 (see further below)! 

Finally restart apache:  
```
sudo apachectl restart 
```

## Upgrading Specify 6 for Specify 7 

A copy of the most recent Specify 6 release is required on the server as Specify 7 makes use of resource files. A Java runtime is required to execute the Specify 6 installer, but is not needed to run Specify 7. It is possible to copy the Specify 6 install from another Linux system to avoid the need to install Java on the server. 
```
sudo wget https://update.specifysoftware.org/6800/Specify_unix_64.sh 
sudo sh Specify_unix_64.sh -q -dir ./Specify6.8.00 
sudo ln -sfn $(pwd)/Specify6.8.00 /opt/Specify 
```
Finally restart apache:  
```
sudo systemctl restart httpd.service 
```

## Troubleshooting 

Generic logs:  
```
sudo journalctl –xe 
```
### Upgrading WSGI from 2.7 to 3.6 

If problems ever occur during upgrading Specify7 that are caused by the older version of WSGI, please refer to one of these answers:  

https://stackoverflow.com/questions/42004986/how-to-install-mod-wgsi-for-apache-2-4-with-python3-5-on-centos-7

https://stackoverflow.com/questions/41005030/django-apache-and-virtualenv-importerror-no-module-named-site

You can fish out relevant lines from the logs like so:  
```
sudo grep wsgi /var/log/httpd/error_log 
```
You may want to check what version of mod_wsgi is installed.  
```
sudo yum list installed | grep mod_wsgi 
```
And then enforce installation of the correct one:  
```
sudo yum remove mod_wsgi.x86_64 
sudo yum install python3-mod_wsgi.x86_64 
```
Then restart the apache service.  

### Running make with sudo  

When after running the “sudo make” command, you get the following error message:  
```
bower ESUDO         Please do not run with sudo 
```
Edit the Makefile where this line is encountered:  
```
nano specify7/specifyweb/frontend/js_src/Makefile 
```
Look up the line node_modules/.bin/bower install and add the --allow-root parameter:  
```
node_modules/.bin/bower install --allow-root 
```
However, generally it’s not recommended to “sudo make”.  

### SSL Certificate still failing after renew 

At some point in time, we’ve started encountering issues, where Specify7 failed to start after renewal of the SSL certificate. This is a fixed bug described here:  

https://github.com/specify/specify7/issues/1005  

In this case, enter the directory where the virtual environment resides and make a backup: 
```
tar -zcvf orig_ve.tar.gz ve 
```
Then, activate the virtual environment and do the needed upgrades from the inside:  
```
source ve/bin/activate 
pip install --upgrade pip 
pip install --upgrade requests 
deactivate 
sudo systemctl restart httpd.service 
```
If needed, also force the certificate renewal from root:  
```
sudo su 
/etc/acme.sh/acme.sh --renew-all –-force 
```

NOTE: You may need to check the exact location of the above with below command.  
```
crontab –l 
```
For example:  
```
./root/.acme.sh/acme.sh --renew-all –force 
```
Or: 
```
"/root/.acme.sh"/acme.sh --renew-all --force 
```
### Moving SSL Certificate from ZeroSSL (Acme) to LetsEncrypt (CertBot) 

Text Lorem Ipsum  

```
yum -y install certbot 
certbot certonly -d specify-MUSEUM.science.ku.dk --standalone --pre-hook "systemctl stop httpd" --post-hook "systemctl start httpd"  
systemctl enable --now certbot-renew.timer 
```

...httpd.conf skal lige rettes til at pege på det nye cert 

https://eff-certbot.readthedocs.io/en/stable/using.html#where-are-my-certificates 

### RuntimeError: populate() isn’t reentrant 

Specify7 may be failing with an internal server error, but looking in the logs (/var/log/httpd/specify-error.log) will only show the not so helpful error message:  
 
```
RuntimeError: populate() isn't reentrant 
```

When this occurs, you can change the source code by altering a line in the django registry: 
```
nano /home/specify/currentversion/specify7/ve/lib64/python3.6/site-packages/django/apps/registry.py 
```
Replace the line:  
```
raise RuntimeError("populate() isn't reentrant") 
```
with:  
```
self.app_configs = {} 
``` 
Then recompile the source code and restart the apache server.  
