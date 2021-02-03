#Install Base image 
FROM python:3.9.1-buster
ARG file
ENV file=$file
#Working directory
WORKDIR . 

#Install Dependencies
RUN pip install pyOpenSSL

#Copy ServerIP file
COPY $file .

#Copy Source code
COPY SSLcheck.py .

#Run the application
ENTRYPOINT python SSLcheck.py