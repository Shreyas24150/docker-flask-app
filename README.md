# docker-flask-app

**A simple Flask web app fully containerized with Docker so it is reproducible, and ready for the cloud.**

/
- app.py
- requirements.txt
- Dockerfile

## Why docker ?

Docker encapsulates application and all its dependencies into a single image, thus:  
- ✅ It executes in the same way everywhere - laptop, EC2, Kubernetes, GitHub Actions and others
- ✅ It resolves the “works on my machine” challenge
- ✅ It is prepared for CI/CD and production deployments

## Prerequisites

   - Downloaded Docker (here)[https://www.docker.com/products/docker-desktop]
   - Account in Docker Hub ([link](https://hub.docker.com/)
   - (Optional) GitHub account for version control

## Step-by-Step Guide

## 1.Install Docker (Docker Desktop)

   - Run the following commands in your terminal:

   sudo apt update
   sudo apt install ca-certificates curl gnupg

   # Add Docker’s GPG key:
   sudo install -m 0755 -d /etc/apt/keyrings
   curl -fsSL https://download.docker.com/linux/ubuntu/gpg | \
   sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

   # Set up the Docker repo:
   echo \
     "deb [arch=$(dpkg --print-architecture) \
      signed-by=/etc/apt/keyrings/docker.gpg] \
      https://download.docker.com/linux/ubuntu \
      $(lsb_release -cs) stable" | \
      sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

   # Install Docker Engine:
     sudo apt update
     sudo apt install docker-ce docker-ce-cli containerd.io

   # Add yourself to the docker group (optional, to avoid `sudo`):
     sudo usermod -aG docker $USER

  # Reboot the system and test
    docker --version

## 2. Create a Docker Hub Account  
   - Go to: https://hub.docker.com/
   - Click “Sign Up” in the top-right corner
   - Choose a username - this is important because it will be part of your image names (e.g., yourusername/flask-app)
   - Fill in your email and password, and verify your email

  # After Setup check
  - docker run hello-world

  - This will return:
    Hello from Docker!
    This message shows that your installation appears to be working correctly.
## 3. Build and Run Locally
   - Build docker image:
     docker build -t shreyas-flask-app .

   -t names your image (shreyas-flask-app)
   . means Docker uses the Dockerfile in the current directory

   - Run the Container:
     docker run -d -p 5000:5000 shreyas-flask-app

     -d: Run in detached (background) mode
     -p 5000:5000: Map container port 5000 to your local port 5000

## 4. Now visit: 
     http://localhost:5000
     
  **You’ll see your Flask app running inside Docker!**

## 5. Push to Docker Hub
   - Tag the Image:
     docker tag shreyas-flask-app yourdockerhubusername/flask-app

   - Login:
     docker login

     Authenticates your local Docker CLI with Docker Hub.

   - Push the Image:
     docker push yourdockerhubusername/flask-app

  **app is now globally accessible to anyone or any server with Docker.**
