sudo docker rm -f demo
sudo docker rmi demo
sudo docker build ./ -t demo
sudo docker run --name demo --link mysql -p 2020:6220 -d demo
