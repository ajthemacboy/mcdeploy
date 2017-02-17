# mcdeploy
A method to deploy multiple Minecraft servers using your own server files


# Usage

1. Install Docker

2. Clone this repository

3. Edit the `path` variable in `deploy.sh` and `down.sh` to the mcdeploy directory

4. Copy your server files and a `start.sh` script to start the server into the `serverfiles` directory. Be sure to include eula.txt or any other files needed.

5. Run `./deploy.sh` and enter a port range. 

To start 10 servers listening on ports 25585 through 25595, enter `25585..25595`.
