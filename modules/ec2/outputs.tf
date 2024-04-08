output "EC2_instance_public_ip" {
    description = "public ip of EC2 instance"
    value = aws_instance.my_first_instance.public_ip
  
}