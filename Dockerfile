# Import the image of base platform
# FROM alpine:latest
FROM rackspacedot/python38:latest

# Install the required libraries in the base platform
RUN apt-get update 
RUN apt-get install 'ffmpeg'\
    'libsm6'\ 
     'libxext6'  -y
# RUN apk add --no-cache python37-dev 
RUN pip3 install --upgrade pip

# Creat and goto a working directory in the image
WORKDIR /app

# Copy the files of current directory in the host into /app inside the image
COPY . /app

# Install all reqired packages for python environment
RUN pip3 --no-cache-dir install -r requirements.txt

# Open one listen port
EXPOSE 8080

# Start the application in the image when launaching it.
ENTRYPOINT gunicorn -b :8080 app:app

# or ENTRYPOINT ["python3", "app.py"] or python3 app.py
# ENTRYPOINT ["python3"]
# CMD ["app.py"]
