# Use the latest Ubuntu as the base image
FROM ubuntu:latest

# Install Python 3, pip, and Git
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    git \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip to the latest version
RUN python3 -m pip install --upgrade pip

# Install PyYAML using pip
RUN pip3 install PyYAML

# Verify Python and pip versions
RUN python3 --version && pip3 --version

# Copy application files
COPY feed.py /usr/bin/feed.py
COPY entrypoint.sh /entrypoint.sh

# Set the entrypoint
ENTRYPOINT ["/entrypoint.sh"]
