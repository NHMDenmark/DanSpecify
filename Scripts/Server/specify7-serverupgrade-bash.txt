## Upgrading Specify7 to 7.7.5 server process ##

# NOTE: Follow instructions on https://github.com/specify/specify7/#installation but take heed of the following: 

# 1. First preparations

su specify

# IF NECESSARY, download the latest version of Specify6 into a /opt/tmp folder 
cd /opt/tmp
sudo wget https://update.specifysoftware.org/Specify_unix_64.sh
#  then install it into the /opt/Specify6/Specify6.8.03 folder 
sudo mkdir /opt/Specify6/Specify6.8.03
sudo sh Specify_unix_64.sh -q -dir /opt/Specify6/Specify6.8.03
#  Switch symlink to this version of Specify6 
sudo unlink /opt/specify6
sudo ln -sf /opt/Specify6/Specify6.8.03 /opt/specify6
sudo ln -sf /opt/specify6 /opt/specify

#  Setup specify7.7.5
cd ~/versions/
mkdir v7.7.5
cd v7.7.5
git clone https://github.com/specify/specify7.git
git checkout -b 62052498cc3592ddf61dce52e09a1fd666f2796e # Gets version v7.7.5 specifically 
cp ~/versions/v7.7.4/specify7/specifyweb/settings/local_specify_settings.py ~/versions/v7.7.5/specify7/specifyweb/settings/local_specify_settings.py

# In case yum refuses to install certain required libraries like e.g. redis lines need to be added to the redhat repo file;
sudo nano /etc/yum.repos.d/redhat.repo		#add the following lines: 

[epel]
name=Extra Packages for Enterprise Linux 7 - $basearch
#baseurl=http://download.fedoraproject.org/pub/epel/7/$basearch
metalink=https://mirrors.fedoraproject.org/metalink?repo=epel-7&arch=$basearch
failovermethod=priority
enabled=1
gpgcheck=1
gpgkey=file:///etc/pki/rpm-gpg/RPM-GPG-KEY-EPEL-7

# *** If not already created beforehand, an automated service for Celery & Redis worker process will be needed for WorkBench amongst others ***
#   1. add bash script 

cd ~
nano sp7worker.sh		# add file contents from version in repo
chmod a+x sp7worker.sh

#   2. Create & start service for auto-running script
cd /etc/systemd/system/
sudo nano sp7worker.service		# add file contents from version in repo
sudo service redis start      # remember to start redis server
sudo systemctl start sp7worker
# Remember to enable restart of services
sudo systemctl enable sp7worker
sudo systemctl enable redis

# Fix nodejs version (only latest stable version v16.15.1) and compile
python3 -m venv specify7/ve 
source specify7/ve/bin/activate

cd specify7

pip install --upgrade pip

# make sure that all other requirements are installed 
pip3 install -r requirements.txt

# It may also be necessary to make sure nodejs has enough available memory 
export NODE_OPTIONS=--max_old_space_size=4096

# Make sure that the latest version of nodejs is running (v16.15.1)
node -v

# You may need to update the npm browser list too! 
npx browserslist@latest --update-db

#   3. Backup the database 
#  Compiling would automatically involve database migrations using the command: python manage.py migrate
# It's recommended to backup the database first before compilation 

#   4. Compile 

# navigate back to the specify7 folder and compile
cd ../.. 
make

# 5. Finishing up

deactivate

unlink ~/currentversion
ln -sf /home/specify/versions/v7.7.5 /home/specify/currentversion

sudo apachectl restart 

sudo tail -f /var/log/httpd/error.log
