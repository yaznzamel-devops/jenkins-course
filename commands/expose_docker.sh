

sudo vim /lib/systemd/system/docker.service
# comment the current exec start 

# add the below new one
ExecStart=/usr/bin/dockerd -H tcp://0.0.0.0:4243 -H unix:///var/run/docker.sock

sudo systemctl daemon-reload
sudo service docker restart
curl http://localhost:4243/version
