# Base image (Ubuntu is large by default)
FROM ubuntu:22.04

# Chain commands with `&&` in a SINGLE RUN instruction
RUN apt-get update && \
    apt-get install -y wget unzip && \
    rm -rf /var/lib/apt/lists/*

# Generate a 10GB dummy file
RUN dd if=/dev/zero of=/10GB_file bs=1G count=10

CMD ["/bin/bash"]