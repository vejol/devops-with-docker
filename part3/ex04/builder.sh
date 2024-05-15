#!/bin/sh

# The script takes two arguments: the repository name and the image name.
# Try for example: docker run -e DOCKER_USER=vesajo -e DOCKER_PWD=<password> -v /var/run/docker.sock:/var/run/docker.sock builder vejol/github-actions-exercise vesajo/github-actions-exercise

echo "Cloning repository..."
git clone https://github.com/$1

#splits the parameter 1 by '/' and takes the last element
repo_name=$(echo $1 | cut -d'/' -f2)

printf "\n"
echo "Building image..."
docker build ./$repo_name -t $2

printf "\n"
echo "Logging into dockerhub..."
echo "$DOCKER_PWD" | docker login -u "$DOCKER_USER" --password-stdin

printf "\n"
echo "Pushing image..."
docker push $2
