# Docker Setup

Initial attempts of installing docker on specifyweb01fl has been succesful. 

Specify's docker-compose git repository was cloned to `/root/specify/`

Docker is started as root using the following command: 

```
cd /root/specify/
docker compose up -d
```

Examples commandos for controlling docker: 

```
docker compose down       # shuts everything down
docker compose ps         # shows status
docker compose logs       # shows logs
docker compose logs nginx # shows logs for nginx only
```


## Remaining Issues  

`curl http://127.0.0.1` yields ”502 Bad Gateway”
