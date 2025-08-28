resource "aws_instance" "jenkins-master" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.jenkins_security_group.id]

  tags = { Name = "saurabh-Jenkins-Master" }
}

resource "aws_instance" "appilcation-node" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.application_security_group.id]

  tags = { Name = "Saurabh-Application-Node" }
}