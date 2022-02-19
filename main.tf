resource "aws_instance" "target" {
  ami                         = var.ami_id
  instance_type               = var.ec2_size
  subnet_id                   = var.vpc_subnet_id
  associate_public_ip_address = var.ec2_public
  vpc_security_group_ids      = var.vpc_sg_ids
  key_name                    = aws_key_pair.target.key_name
  tags = {
    name = var.ec2_name
  }
}

resource "aws_key_pair" "target" {
  key_name   = var.ec2_name
  public_key = var.ec2_key
}
