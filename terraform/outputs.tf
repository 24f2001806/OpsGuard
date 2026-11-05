output "public_ip" {
  description = "Public IP of the OpsGuard EC2 Instance"
  value       = aws_instance.opsguard.public_ip
}

output "instance_id" {
  description = "ID of the EC2 Instance"
  value       = aws_instance.opsguard.id
}