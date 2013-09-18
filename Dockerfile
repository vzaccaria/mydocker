## Instructions on how to run docker
#
# Image creation (in the directory containing the Dockerfile)
# 	
# 		sudo docker build . 
#
# Image tagging (sudo docker images)
#
#		sudo docker tag HEX TAG
#
# Running a command in a container 
#
#		sudo docker run TAG COMMAND
#
# To run an interactive session with a container
#
#    	sudo docker run -i -t TAG /bin/bash      			or
# 		sudo docker run -i -p 8000 -t node-v3 /bin/bash


from ubuntu:12.10

# update system and install dependencies

run apt-get update
run apt-get install -y python2.7 python build-essential wget
run apt-get install screen
run apt-get install catdoc

# get and build node

run cd /tmp && wget http://nodejs.org/dist/v0.10.15/node-v0.10.15.tar.gz
run cd /tmp && tar -xzvf /tmp/node-v0.10.15.tar.gz
run cd /tmp/node-v0.10.15 && ./configure --prefix=/usr && make && make install


run npm install -g LiveScript
run npm install -g coffee-script
run npm install -g express
run npm install -g moment
run npm install -g optimist
run npm install -g jade
run npm install -g less
run npm install -g ansi-color
run npm install -g request
run npm install -g jQuery
run npm install -g jsdom
run npm install -g xmlhttprequest


run npm install -g bower
run cd /tmp && wget --no-check-certificate https://dl.ngrok.com/linux_386/ngrok.zip
run mkdir /home/devel
run mkdir /home/devel/ngrok 
run apt-get install unzip
run cd /tmp && unzip ngrok.zip
run mv /tmp/ngrok /home/devel/ngrok

run apt-get install -y git

expose 8000

run cd /home/devel && git clone https://github.com/vzaccaria/showcase-web3.git

run cd /home/devel && npm install wmake
run npm install -g uglify-js@1

run npm install -g uglifycss
run npm install -g watchman
run npm install -g pushserve

run cd /root && git clone https://github.com/vzaccaria/shellinit.git
run echo "source /root/shellinit/.vzshrc" >> /root/.bashrc

user root

run apt-get install vim

