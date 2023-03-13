# Database Management

The Specify software system uses a MySQL-compatible database server for persistence. In our case, a MariaDB database server is running holding the respective databases for each institution. 

## Accessing the databases

For easy access from a computer to the database server, an SQL client can be used. 
There are several options for such a client, but the following guide will focus on HeidiSQL. 

HeidiSQL can be downloaded here: 

* https://www.heidisql.com/download.php 

NOTE: You have to be inside the UCPH (KU) network in order to connect to the database server, either through VPN or a network cable. Eduroam generally blocks the port used for connections (3306). 

Once you've installed the client, you need to set up a connection profile. 
When you start up the program, you will first be met up by a splash screen prompting for donations and (possibly) installing upgrades. When skipping this splash screen you will see the following: 

![image](https://user-images.githubusercontent.com/10909008/224634780-ed359266-f560-44e9-9857-80562a70fe1f.png)

Fill in the following in the respective input fields:

* __Hostname / IP:__ specify-db.science.domain 
* __User:__ [username]
* __Password:__ [password]
* __Port:__ 3306
  
The username and password can be acquired from the Specify team and depend on the level of access needed. 
For complete access, the username is 'root'. 

NOTE: It is generally strongly discouraged to make any direct changes to the data in Specify databases, unless one is exceedingly certain about the implications of each change. Otherwise, no UPDATE/INSERT/DELETE actions should be performed, only SELECT statements run. 
  
### SQL Statement for statistics 

  Under construction...

## Backing up databases

The database server is backed up by the University of Copenhagen IT services (KU-IT) on a regular basis, i.e. every night at around 22:00. 

In certain cases, it may be a good idea to make a database backup, for instance when upgrading or something similar, allowing us to choose the specific time of the backup to be made. 

(under construction...)
