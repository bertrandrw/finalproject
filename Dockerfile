# Base image with Ubuntu and OpenJDK
FROM ubuntu:latest

# Update package lists and install necessary tools
RUN apt-get update && \
    apt-get install -y openjdk-11-jdk wget unzip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download and install IntelliJ IDEA Community Edition
RUN wget -O /tmp/intellij.tar.gz "https://download.jetbrains.com/idea/ideaIC-2021.3.tar.gz" && \
    tar -xzf /tmp/intellij.tar.gz -C /opt/ && \
    rm /tmp/intellij.tar.gz

# Set environment variables
ENV JAVA_HOME /usr/lib/jvm/java-11-openjdk-amd64
ENV PATH $PATH:/opt/idea-IC-*/bin

# Set up a volume for project files
VOLUME ["/project"]

# Set the working directory
WORKDIR /project

# Start IntelliJ IDEA when the container starts
CMD ["idea.sh"]

