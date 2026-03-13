resource "aws_instance" "public_ec2" {
  ami                    = "ami-0f559c3642608c138"
  instance_type          = "t3.micro"
  subnet_id              = var.public_subnet_id
  vpc_security_group_ids = [var.public_ec2_sg_id]
  key_name               = var.key_name
  associate_public_ip_address = true

  tags = {
    Name = "${var.project_name}-public-ec2"
  }
}

resource "aws_instance" "private_ec2" {
  ami                    = "ami-0f559c3642608c138"
  instance_type          = "t3.micro"
  subnet_id              = var.private_subnet_id
  vpc_security_group_ids = [var.private_ec2_sg_id]
  key_name               = var.key_name

  tags = {
    Name = "${var.project_name}-private-ec2"
  }
}

