    #!/bin/bash

    # Update the package index
    sudo apt-update -y

    # Import the Jenkins GPG key
    wget -O /usr/share/keyrings/jenkins-keyring.asc \
    https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
    
    # Add the Jenkins repository to the apt sources list
    echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
    https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
    /etc/apt/sources.list.d/jenkins.list > /dev/null
   
    # Update the apt package index
    sudo apt-get update -y
    
    # Install Jenkins
    sudo apt-get install jenkins -y
    sudo apt update -y
    
    # Install Java OpenJDK 17
    sudo apt install fontconfig openjdk-17-jre -y
    
    # Enable the Jenkins service to start at boot time
    sudo systemctl enable jenkins
    sudo systemctl start jenkins
    
