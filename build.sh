cat ReadMe.txt
mkdir $(date +'%d%h%y_%H%M%S')
git pull https://github.com/bharath-hj238/docker.git
docker-compose up -d
