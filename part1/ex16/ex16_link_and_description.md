# Link to Running App

Link to the running app: [https://cyber-security-base-project-in-docker.fly.dev/](https://cyber-security-base-project-in-docker.fly.dev/)

# How did I make deployment

It was really easy. I already had the dockerfile from previous exercise. I also had already fly.io account, so I just gave command `fly launch` in same folder with dockerfile.

In addition, I had to add 'cyber-security-base-project-in-docker.fly.dev' to ALLOWED_HOSTS in my app configuration (./server/config/settings.py). After modification, I deployed changes with command `fly deploy` and then I was able to see it on internet.

Because the app has been made for demonstrating typical web application security flaws, there is CSRF verification error after login and other functionality of the app cannot be used. Sorry about that.

# Faulty Banking App

This is demonstration of how to deploy app from dockerfile. The dockerfile used for deployment is located inside folder ./Cyber_Security_Base-Project_I.

Originally Faulty Banking App was my project for course Cyber Security Base and it was built for indroducing typical flaws of web application.

Github repository: [https://github.com/vejol/Cyber_Security_Base-Project_I/tree/main](https://github.com/vejol/Cyber_Security_Base-Project_I/tree/main)

There are three users: alice, bob and patrick. You can use following credentials for logging in and testing the application:

- alice:redqueen
- bob:squarepants
