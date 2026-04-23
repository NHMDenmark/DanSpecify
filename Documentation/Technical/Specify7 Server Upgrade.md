# Specify7 Server Upgrade

The following is a local specification of the general update instructions found here: 
[https://github.com/specify/specify7/#installation](https://discourse.specifysoftware.org/t/how-to-update-specify-7/2475)

The server upgrade is done through a command prompt or terminal window. 

The old upgrade instructions have been archived here: 
[Documentation/Technical/Archived/Specify7 Server Upgrade_v2.md](https://github.com/NHMDenmark/DanSpecify/blob/master/Documentation/Technical/Archived/Specify7%20Server%20Upgrade_v2.md)

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
  MASTER_USER='specify',
  MASTER_PASSWORD='XXXXXXXXXXXX',
  MASTER_LOG_FILE='master1-bin.XXXXXX',
  MASTER_LOG_POS=XXXXXXXXX;
```
On main server (specifydb02fl):

```
CHANGE MASTER TO
  MASTER_HOST='specifydb03fl',
  MASTER_USER='specify',
  MASTER_PASSWORD='XXXXXXXXXXXX',
  MASTER_LOG_FILE='master2-bin.XXXXXX',
  MASTER_LOG_POS=XXXXXXXXX;
```
**Start replication**

On db-replica (specifydb03fl):

```
START SLAVE;
SHOW SLAVE STATUS\G
```

On main server (specifydb02fl):

```
START SLAVE;
SHOW SLAVE STATUS\G
```

## 9. Verify Functionality

Once the containers are running, log in to the Specify 7 web interface and test key functionality:

* Perform a record search.
* Open and save a record.
* Upload or view an attachment.
* Generate a label or report.
* Conduct an edit on one of the trees.
