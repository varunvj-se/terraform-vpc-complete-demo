resource "aws_eip" "elasticip" {
  depends_on = [
    aws_internet_gateway.vpc-terraform-igw
  ]
  vpc      = true
  instance = aws_instance.terraform-ec2-instance[0].id
}