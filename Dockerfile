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
    clang \                   
    clang-format \            
    clang-tidy \              
    && rm -rf /var/lib/apt/lists/*

# Set the working directory inside the container
WORKDIR /app

# Command to run when the container starts
CMD ["/bin/bash"]
