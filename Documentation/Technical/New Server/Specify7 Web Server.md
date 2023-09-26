# Specify7 Web Server

under construction... 

## Set up 

under construction... 

## Logs 

You can find the logs by performing the following steps:

Run `docker ps` in the terminal. This will give you an overview of all the containers that are running in this instance: 

![image](https://github.com/NHMDenmark/DanSpecify/assets/10909008/d365c7dc-286a-43ea-9d84-c4ead261c544)

Copy the container ID for the line that has the name specify7-1 at the end (see the second line in the above screenshot)

Run the following command, replacing 999250a6139b with the CONTAINER ID for your instance.

`docker logs —tail 1000 999250a6139b `

💡 The --tail 1000 says to show only the most recent 1000 lines. This can be adapted or removed. 

You should now see the logs for the front-end container. 

You can use the same process to see the logs for the other docker containers as well! 

