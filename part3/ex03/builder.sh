#!/bin/sh

# The script takes two arguments: the repository name and the image name.
# Try for example: bash ./builder.sh vejol/github-actions-exercise vesajo/github-actions-exercise

echo "Cloning repository..."
git clone https://github.com/$1

#splits the string by '/' and takes the last element
repo_name=$(echo $1 | cut -d'/' -f2)

printf "\n"
echo "Building image..."
docker build ./$repo_name -t $2

printf "\n"
echo "Pushing image..."
docker push $2
