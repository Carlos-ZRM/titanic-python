#mkdir /var/lib/docker/volumes/
docker build -t jupyter-titanic .
docker rm -f jupyter-titanic
docker run -dt  \
	--name jupyter-titanic  \
	--restart  always \
	-p 80:8888 \
	-v ${PWD}/vol:/usr/src/app/:z \
       	jupyter-titanic
