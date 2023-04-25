resource "aws_instance" "terraform-ec2-instance" {
  ami                    = data.aws_ami.amazonlinux2ami.id
  instance_type          = var.ec2_instance_type
  count                  = var.ec2_intance_count
  user_data              = file("apache-install.sh")
  subnet_id              = aws_subnet.vpc-terraform-subnet.id
  vpc_security_group_ids = [aws_security_group.vpc-terraform-sg.id]
  key_name               = "terraform-key"
}