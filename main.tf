resource "aws_instance" "jenkins_controler" {
  ami                         = "ami-0776c814353b4814d"
  instance_type               = "t2.micro"
  subnet_id                   = "subnet-02c5ddd7d08c764d2"
  security_groups             = [aws_security_group.jenkins_controler_sg.id]
  associate_public_ip_address = true

 user_data = file("jenkins.sh")

  tags = {
    Name = "Jenkins-Controller"
  }
}
