output "jenkins_master_public_ip" {
  description = "The public IP of the Jenkins Master instance."
  value       = aws_instance.jenkins-master.public_ip
}

output "application_node_public_ip" {
  description = "The public IP of the Application Node instance."
  value       = aws_instance.appilcation-node.public_ip
}