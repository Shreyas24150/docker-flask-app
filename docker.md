## Steps to write a docker file 

# Use official Python image
FROM python:3.10-slim

 - This is your base image - a lightweight Python 3.10 environment.
 - "Slim" keeps it lean to reduce size (faster build, deploy).

# Set working directory
WORKDIR /app

 - Inside the container, this sets the folder where all your files and commands will run.

# Copy files into the container
COPY . .

 - Copies everything including app.py and requirements.txt files from your local machine into the container’s /app directory.

# Install dependencies
RUN pip install -r requirements.txt

 -Installs all required packages inside the container (not your machine).

# Expose Flask default port
EXPOSE 5000

 - Makes port 5000 available outside the container so your app is accessible

# Command to run the app
CMD ["python", "app.py"]

 - Tells Docker how to start the Flask app when the container runs.


**My docker file**

FROM python:3.10-slim

WORKDIR /app

COPY . .

RUN pip install -r requirements.txt

EXPOSE 5000

CMD ["python", "app.py"]
