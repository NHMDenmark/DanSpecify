# Web Asset Server ('Attachment Server') 

## General 

Installation instructions and basic documentation can be found on Github 

The server is running on a00544. You should be able to connect with SSH: 
```
ssh <YOUR_KUID>@a00544.science.ku.dk  
```
The local user under which the process is registered is specify:  
```
su specify 
```

Requests are handled by an nginx server that redirects to the Python bottle server (the actual attachment server). The nginx* will accept requests at port 80 (HTTP) and 443 (HTTPS), configured here: 
```
/etc/nginx/conf.d/web-asset-server.conf  
```
 
The Web asset server is installed in the specify users home directory. 

It is registered as a systemctl service. You can find the service definition here: 
```
/etc/systemd/system/web-asset-server.service  
```
 
To check the status 
```
systemctl status web-asset-server.service  
```
 
To start the the server (in case it did not automatically restart) 
```
sudo systemctl start web-asset-server.service  
```

Sometimes the nginx service needs to be restarted first though:  
```
sudo systemctl start nginx 
```

When services fail to start up check for listeners:  
```
sudo netstat -ltnp | grep :80 
```

And kill any processes occupying the ports already first:  
```
sudo kill -9 [PROCESS_ID] 
```
 
The actual attachment files are stored on an Isilon storage cluster. You can access like an I:-drive via groupdirs. On a Mac you can mount it via SMB (I guess it is even easier on a PC)  
```
smb://science.domain/groupdirs/SCIENCE-SNM-DANSPECIFY-MEDIEDATA  
```
  
## What you need to know 

The WAS can map requests coming from a user of a specific collection to directory in the asset repository. This is done in the settings file in the specify user's home directory.  
```
~/web-asset-server/settings.py  
``` 

You do that in the COLLECTION_DIRS dictionary, which currently looks like this: 
```
COLLECTION_DIRS = {  'NHMD Archaeozoology Comparative Birds': 'NHMD_Ornithology',  'NHMD Archaeozoology Comparative Mammals': 'NHMD_Mammalogy',  'NHMD Biocultural Botany': 'NHMD_Biocultural_Botany',  'NHMD Entomology': 'NHMD_Entomology',  'NHMD Herpetology': 'NHMD_Herpetology',  'NHMD Invertebrate Zoology': 'NHMD_Invertebrate_Zoology',  'NHMD Mammalogy': 'NHMD_Mammalogy',  'NHMD Ornithology': 'NHMD_Ornithology',  'NHMD Quaternary Zoology': 'NHMD_Quaternary_Zoology',  'NHMD Vertebrate Paleontology': 'NHMD_Vertebrate_Paleontology',  'NHMD Danekrae': 'NHMD_Vertebrate_Paleontology',  'FIMUS Havpattedyr': 'FIMUS_Havpattedyr',  'MSJN Paleontology': 'MSJN_Paleontology',  'MUSERUM Naturhistorie': 'MUSERUM_Naturhistorie',  'Naturama Samlinger': 'Naturama_Samlinger',  'Museum Mors Geologisk Samling': 'Museum_Mors_Geologisk_Samling',  'OESM Collection': 'OESM_Collection',  'NHMA Fresh water': 'NHMA_Fresh_water',  'NHMA Entomology': 'NHMA_Fresh_water',  'NHMA Malacology': 'NHMA_Fresh_water',  'NHMA Invertebrates wet': 'NHMA_Fresh_water',  'NHMA Monitoring': 'NHMA_Fresh_water',  'NHMA Vertebrate': 'NHMA_Fresh_water'}  
```

Martin did this because he wanted to keep track of at least the different museums attachments by folder. 
The problem with the mapping is that it does NOT work in Specify 7, or rather it works partially. 
Specify 7 will map everything to the first folder. 
So if we have a Specify 7 instance for NHMA, it will map everything to NHMA Freshwater even if it says otherwise. 
This is corrected for by actually mapping all NHMA collections to Freshwater. 

Ideally, all the asset directories should be consolidated, so that there are only 7 directories left, one for each museum with the exception of Museum Salling and Museum Mors who will share one. 
The all collections within one musem can be mapped to the same directory for that museum and you can keep track of a museums attachments by directory. 
This consolidation would require copying over all attachment files form the various collection directories to the consolidated museum directories. 

