 #!/bin/bash
    
    # Update the package index
    sudo apt-update -y
    
    # Install Java OpenJDK 17
    sudo apt install fontconfig openjdk-17-jre -y
    sudo systemctl enable jenkins
    
   # Install Terraform package 
    wget https://releases.hashicorp.com/terraform/1.4.4/terraform_1.4.4_linux_amd64.zip
    unzip terraform_1.4.4_linux_amd64.zip
    mv terraform /usr/local/bin/