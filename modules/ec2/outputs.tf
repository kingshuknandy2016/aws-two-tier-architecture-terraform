output "public_ec2_id" {
  value = aws_instance.public_ec2.id
}

output "private_ec2_id" {
  value = aws_instance.private_ec2.id
}

output "public_ec2_public_ip" {
  value = aws_instance.public_ec2.public_ip
}

