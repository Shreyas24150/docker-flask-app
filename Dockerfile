# use official python image
FROM python:3.10-slim

# Set working directory
WORKDIR /app

# copy files into the container
COPY . .

# Install dependencies
RUN pip install -r requirements.txt

#Expose Flask default port
EXPOSE 5000

# Command to run the app
CMD ["python", "app.py"]


