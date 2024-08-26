#!/bin/bash

# Update package list and install Java
sudo apt update
sudo apt install -y openjdk-11-jdk

# Create a directory for the Jenkins agent
sudo mkdir -p /var/jenkins

# Switch to the Jenkins directory
cd /var/jenkins

# Download the Jenkins agent jar
sudo wget http://<jenkins-master>:8080/jnlpJars/agent.jar

echo "Java installation and Jenkins agent setup completed."
