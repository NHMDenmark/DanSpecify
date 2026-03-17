# Specify7 Server Upgrade

The following is a local specification of the general update instructions found here: 
[https://github.com/specify/specify7/#installation](https://discourse.specifysoftware.org/t/how-to-update-specify-7/2475)

The server upgrade is done through a command prompt or terminal window. 

The old upgrade instructions have been archived here: 
PLACEHOLDER

## Naming of the relevant servers in this guide: ##

| Role                         | Name     |
|------------------------------|--------------|
| Database server              | db-master    |
| Database replication server  | db-replica   |
| Webserver                    | web-master   |
| Replication webserver        | web-replica  |


## 1. Pre-upgrade Preparation

### 1.1 Maintenance Planning ###

* Schedule downtime window
* Notify stakeholders

### 1.2 Create Backup ###

Log in to the server with SSH. 
```
ssh <YOUR_KUID>@<db-master> 
```
Switch to super user: 
```
sudo su 
```

Create an SQL dump and zip it: 
```
mariadb-dump NHMD > NHMD_yyyymmdd.sql --max_allowed_packet=2G
gzip NHMD_yyyymmdd.sql
```

Check if it's there: 
```
ls -l
```

## 2. Stop the webservers

```
ssh <YOUR_KUID>@web-primary

sudo su

cd /root/specify

docker compose down
```
Repeat on with web-replica.

## 3. Pause Database Replication

```
mariadb

STOP SLAVE;

```
Repeat on with db-replica.

Verify their status: 
```
SHOW SLAVE STATUS\G

```

## 4. Check Latest Release

Check the latest releases of Specify on GitHub:
https://github.com/specify/specify7/releases

## 5. Update Web Server Configuration

Open docker-compose file:

```
nano docker-compose.yml

```

Change the image to the desired version both for service and the worker process, in this case:
```
specifyconsortium/specify7-service:v7.11.2.1
```
During updates that require migrations, **set** `MASTER_NAME` and `MASTER_PASSWORD` to the **root** username and password of your database. 
After launching Specify and confirming that the update is complete, you can safely replace these credentials with your regular master SQL username and password.

Compare your `docker-compose.yml` and `nginx.conf` files with the latest examples in the [specify/docker-compositions repository](https://github.com/specify/docker-compositions). Add or update any new environment variables or Nginx proxy rules as noted in the release announcement.

```
nano nginx/specify.conf
```
Repeat the previous steps on web-replica.

## 6. Clean Docker Images

On web-master:
```
docker images
docker system prune -a
```
That will delete all the unused images, stopped containers, and unused networks.

Repeat on web-replica.

## 7. Deploy Updated Containers

On web-master:

```
docker compose pull
```

when it's ready,  start the container. It will automatically run any necessary database migrations.
Meanwhile montor the logs.

```
docker compose up -d
docker compose logs -f specify7 nginx
```

Repeat on web-replica.


## 8. Restart Database Replication

Log into db-master and check the master file and the position:

```
ssh abc123@specifydb02fl
sudo su
mariadb
SHOW MASTER STATUS
```
Repeat with db-replica.

**Synchronize the two servers:**

On db-replica (specifydb03fl):

```
CHANGE MASTER TO
  MASTER_HOST='specifydb02fl',
  MASTER_USER='master',
  MASTER_PASSWORD='XXXXXXXXXXXX',
  MASTER_LOG_FILE='master1-bin.XXXXXX',
  MASTER_LOG_POS=XXXXXXXXX;
```
On main server (specifydb02fl):

```
CHANGE MASTER TO
  MASTER_HOST='specifydb03fl',
  MASTER_USER='master',
  MASTER_PASSWORD='XXXXXXXXXXXX',
  MASTER_LOG_FILE='master2-bin.XXXXXX',
  MASTER_LOG_POS=XXXXXXXXX;
```
**Start replication**

On db-replica (specifydb03fl):

```
START SLAVE;
SHOW SLAVE STATUS\G
``

On main server (specifydb02fl):

```
START SLAVE;
SHOW SLAVE STATUS\G
```

## 9. Verify Functionality

Once the containers are running, log in to the Specify 7 web interface and test key functionality:

• Perform a record search.
• Open and save a record.
• Upload or view an attachment.
• Generate a label or report.
• Conduct an edit on one of the trees.


--------------------------------------------------------------------------------------------------------


Update local dependencies according to the general installation instructions (https://github.com/specify/specify7/#installation).


### Upgrade Python to 3.8 ### 

The latest version of Specify7 needs Python version 3.8 to work. Upgrading python to version 3.8 on a RHEL7 server is not as straightforwards as just typing the following on a RHEL8 server: 
```
sudo yum install python38
```

First check the server version using the following command: 
```
hostnamectl 
```

I case of a RHEL7 server version (e.g. `cpe:/o:redhat:enterprise_linux:7.9:GA:server`) you'd need to follow the next instructions.  

Install the following packages first:
```
sudo yum install gcc openssl-devel bzip2-devel libffi-devel zlib-devel -y
```

Then download a version of python3.8 (e.g. 3.8.12) in the 'opt' folder and unpack and enter unpacked folder: 
```
cd /opt
sudo curl -O https://www.python.org/ftp/python/3.8.12/Python-3.8.12.tgz
sudo tar -zxvf Python-3.8.12.tgz
cd /opt/Python-3.8.12
```

Python 3.8 will be installed alongside the other versions using the following configuration: 
```
sudo ./configure --enable-shared --prefix=/usr
sudo ./configure --enable-optimizations
```

Then build the downloaded Python source code like so: 
```
sudo make install
```

Then copy the shared compiled library files (libpython3.8.so) to the /lib64/ directory:
```
sudo cp --no-clobber ./libpython3.8.so* /lib64/
```

Change the permissions of the libpython3.8.so files as follows:
```
sudo chmod 755 /lib64/libpython3.8.so*
```

For pip to use the latest version of setuptools you may need to make sure it's upgraded: 
```
python3 -m pip install -U setuptools
```

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
sudo systemctl daemon-reload
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
git clone https://github.com/specify/specify7.git
```
The local settings file need to copied from the previous (and still current) version:
```
cp ~/currentversion/specify7/specifyweb/settings/local_specify_settings.py specify7/specifyweb/settings/local_specify_settings.py
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
Check that the latest version of nodejs should be installed (v18.*):
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
