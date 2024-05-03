# Use the latest LTS (Long Term Support) version of Ubuntu as the base image
FROM ubuntu:latest

# Metadata as defined in OCI image spec annotations
LABEL maintainer="dev_jeb"

# Update package lists and install any needed dependencies
RUN apt-get update && \
    apt-get install -y \
    build-essential \         
    gcc \                     
    gdb \   
    man-db  \                 
    clang \                   
    clang-format \            
    clang-tidy \              
    && rm -rf /var/lib/apt/lists/*

# Unminimize the base image so we have access to man pages becuase we love them!
RUN yes | unminimize

# Set the working directory inside the container
WORKDIR /app

# Command to run when the container starts
CMD ["/bin/bash"]
