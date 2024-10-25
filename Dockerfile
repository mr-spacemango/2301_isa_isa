# Dockerfile
FROM ubuntu:latest

# Install Python3, pip, and Flask
RUN apt-get update && \
    apt-get install -y python3 python3-pip && \
    pip3 install flask

# Copy the application code to the container
COPY application.py /opt/app/application.py

# Expose the port Flask will use
EXPOSE 5000

# Command to run the Flask app
CMD FLASK_APP=/opt/app/application.py flask run --host=0.0.0.0
