# Specify 7 Server Management

There are 7 Specify 7 instances. All are virtual machines running Red Hat Enterprise Linux. 

|server     |version |reports  |tenant     |hostname             |alias                          | 
|-----------|--------|---------|-----------|---------------------|-------------------------------|
|Specify 7  |7.7.4   |         | OESM      |a00661.science.ku.dk |specify-oesm.science.ku.dk     | 
|Specify 7  |7.6.1   |enabled  | Naturama  |a00628.science.ku.dk |specify-naturama.science.ku.dk |   
|Specify 7  |7.7.4   |         | MUSERUM   |a00629.science.ku.dk |specify-muserum.science.ku.dk  |  
|Specify 7  |7.7.5   |enabled  | NHMD      |a00630.science.ku.dk |specify-snm.science.ku.dk      |  
|Specify 7  |7.7.4   |         | NHMA      |a00631.science.ku.dk |specify-nhma.science.ku.dk     |  
|Specify 7  |7.7.4   |enabled  | MSJN      |a00632.science.ku.dk |specify-msjn.science.ku.dk     |  
|Specify 7  |7.7.4   |         | FIMUS     |a00633.science.ku.dk |specify-fimus.science.ku.dk    | 

You should be able to log in via SSH using your KU ID. The Specify applications are run by a local user specify (same as the web asset server). Open a DOS command prompt & write:  

`ssh [your-ku-id]@server-hostname-or-alias`  

Approve the security when logging in first time and write your password. Then switch to the Specify user and change to its home directory:  
```
su specify  
cd ~ 
```
The Specify application is hosted by HTTPD (Apache). 

The configuration used to be done in this file here: 
```
~/specify7/local_specifyweb_apache.conf 
```
And there used to be a symlink to that in the HTTPD configuration directory: 
```
/etc/httpd/conf.d/local_specifyweb_apache.conf 
```
However, this config file is superseded by ssl.conf in the same folder (see below).  

In the home directory, directories of different versions, such as v7.3.0 and v7.5.0 have been grouped in the versions-directory. That way, if an upgrade is not working, one can easily roll back by just pointing the apache configuration back to the previous version. 

Note that there is another symlink in the home directory: 
```
~/currentversion 
```
That link points to the directory with the current version.  

### Server Restart 

When logged in to the server using ssh you can restart the web server using the following:  
```
sudo apachectl restart 
```
You will need to type the password of the username your logged in as, either your own windows one or the specify one. The server should restart within seconds, otherwise something’s wrong.  

### SSL Certificates 

All servers have SSL certificates (managed by KU-IT) with the Apache SSL configuration in:  
```
/etc/httpd/conf.d/ssl.conf 
```
The servers will only allow connection via HTTPS on port 443. If someone tries HTTP at port 80, they will be redirected to HTTPS on port 443. This is configured in 
```
/etc/httpd/conf.d/00_redirect.conf 
```
To check whether the certificate is expiring write this commando: 
```
openssl s_client -servername localhost -connect localhost:443 2>/dev/null | openssl x509 -noout –datesln  
```

### Report Runner 

Some servers have the Specify 7 Report Runner Service installed. 
Before installing it on the rest, consider consolidating all servers onto a single one with Apache Virtual Hosting. 
That would also ease future upgrades, which only would need to be done on one machine. 
Maybe even the pending LDAP set-up.  
