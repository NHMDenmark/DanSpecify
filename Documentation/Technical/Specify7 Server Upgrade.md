# Specify7 Server Upgrade

The following is a local specification of the general installation instructions found here: 
https://github.com/specify/specify7/#installation

The server upgrade is done through a command prompt or terminal window. 

The old upgrade instructions have been archived here: 
[Upgrading Specify7](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/Technical/Archived/Upgrading%20Specify7.md)

## Preparation

Log in to the server with SSH. 
```
ssh <YOUR_KUID>@<SERVER_ADDRESS> 
```
Switch to the specify user using its password: 
```
su specify 
```
Update local dependencies according to the general installation instructions (https://github.com/specify/specify7/#installation).

### Trouble installing dependencies 

In case yum refuses to install certain required libraries, several lines need to be added to the redhat repo file. 
Inspect the file in edit mode: 
```
sudo nano /etc/yum.repos.d/redhat.repo
```
If missing, add the following lines: 
```
[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7
```
This will ensure that the server has access to the repositories needed to fetch its dependencies from. 

### Upgrade Specify6 on the Server 

Specify7 still has some dependency on Specify6 located on the server in the `/opt/` folder. 
It *may* be necessary to upgrade the Specify6 binaries installed on the server to match the new version. 

First download the latest installer into a temporary folder: 
```
sudo wget https://update.specifysoftware.org/Specify_unix_64.sh
```
Then create a new folder for this version and run the installer, installing it in there: 
```
sudo mkdir /opt/Specify6/Specify6.<NEW_VERSION_NR>
sudo sh Specify_unix_64.sh -q -dir /opt/Specify6/Specify6.<NEW_VERSION_NR>
```
Switch symlink to this version of Specify6 
```
sudo unlink /opt/specify6
sudo ln -sf /opt/Specify6/Specify6.<NEW_VERSION_NR> /opt/specify6
sudo ln -sf /opt/specify6 /opt/specify
```

NOTE: Upgrading Specify7 will update the database also, which may mean that Specify6 users need to 
upgrade this program on their local computers in order to connect to the upgraded database. 

### Setup Worker Processes

For features such as WorkBench, an automated service for Celery & Redis worker process need to be running. 
If not already created beforehand, use the following instructions to get this set up. 

The bash script needed to start the Celery service can be found here: 
[sp7worker.sh](https://github.com/NHMDenmark/DanSpecify/blob/master/Scripts/Server/sp7worker.sh) 

Create a new file in the root of the specify user home, add the above contents and set execution permissions: 

```
cd ~
nano sp7worker.sh		    
chmod a+x sp7worker.sh
```
Next, the service needed for auto-running the script needs to be created using this definition: 
[sp7worker.service](https://github.com/NHMDenmark/DanSpecify/blob/master/Scripts/Server/sp7worker.service)

Create the service definition, start the redis service and activate the sp7worker service: 
```
cd /etc/systemd/system/         
sudo nano sp7worker.service		  
sudo service redis start        
sudo systemctl start sp7worker  
sudo systemctl enable sp7worker 
```

## Upgrade Specify7 

Once all preparation are in place, it's time to upgrade Specify7 itself. 

In the specify user home, create a directory for the new version and change to this directory:
```
cd ~ 
mkdir versions/v<VERSION_NUMBER> 
cd versions/v<VERSION_NUMBER> 
```
Clone the Specify7 source code into this folder:
```
git clone git://github.com/specify/specify7.git 
```
The local settings file need to copied from the previous (and still current) version:
```
cp ~/currentversion/specify7/specifyweb/settings/local_specify_settings.py specifyweb/settings/local_specify_settings.py
```
NOTE: Since there may have been changes to the settings file, it's recommended to compare the new with the old version and transfer any differences. 

Create a virtual environment in the specify7 folder and activate it: 
```
python3 -m venv specify7/ve 
source specify7/ve/bin/activate
```
Enter the specif7 directory, and make sure that all requirements are installed: 
```
cd specify7
pip install --upgrade pip
pip3 install -r requirements.txt
```
It may also be necessary to make sure nodejs has enough available memory:
```
export NODE_OPTIONS=--max_old_space_size=4096
```
Check that the latest version of nodejs should be installed (v16.15.1):
```
node -v
```
You may want to update the npm browser list too! 
```
npx browserslist@latest --update-db
```
Compiling would automatically involve database migrations using the command: `python manage.py migrate`. 
It's therefore recommended to backup the database first before compilation. 

When all is set, run the compilation from the specify7 folder: 
```
make
```
To finish up, switch the currentversion symlink to the newly installed one and restart: 
```
deactivate
unlink ~/currentversion
ln -sf /home/specify/versions/v7.7.5 /home/specify/currentversion
sudo apachectl restart 
```
Monitor the logs for any issues with the upgrade: 
```
sudo tail -f /var/log/httpd/error.log
```
