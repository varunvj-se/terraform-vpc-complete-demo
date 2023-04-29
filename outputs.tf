output "ec2_public_ips" {
  description = "Public IP of all EC2 instances"
  value       = aws_instance.terraform-ec2-instance.*.public_ip
}

output "ec2_public_dns" {
  description = "Public DNS of all EC2 instances"
  value       = aws_instance.terraform-ec2-instance.*.public_dns
}