output "ec2_id" {
  value       = aws_instance.target.id
  description = "EC2: ID"
}

output "ec2_arn" {
  value       = aws_instance.target.arn
  description = "EC2: ARN"
}

output "ec2_private_dns" {
  value       = aws_instance.target.private_dns
  description = "EC2: Dynamic private DNS name"
}

output "ec2_public_dns" {
  value       = aws_instance.target.public_dns
  description = "EC2: Dynamic public DNS name"
}

output "ec2_public_ip" {
  value       = aws_instance.target.public_ip
  description = "EC2: Dynamic public IP"
}
