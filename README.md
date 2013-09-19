
# Install and setup Docker:

  1. Install docker from the docker website
  1. `mkdir ~/mydock`
  1. `cd ~/mydock && wget https://raw.github.com/vzaccaria/mydocker/master/Dockerfile` 

# Install command-line utilities:

  1. `cd ~ && wget https://raw.github.com/vzaccaria/shellinit/master/.vzshrc`
  1. `cd ~ && source ./vzshrc`
  1. use `dck-build .` to build the container
  1. use `dck-tag` to tag it
  1. use `dck-ssh` to connect to it

At this point you should have a runnable container with 

  - the latest version of showcase3 enabled.
  - the latest version of ngrok installed

# Setup web tunneling app `ngrok`:

  1. Start the server with port at PORT
  1. Use `/home/devel/ngrock/ngrok PORT` to expose PORT to outside

