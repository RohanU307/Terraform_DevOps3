resource "aws_instance" "my_first_instance" {
  ami           = var.ami
#  count = length(var.instance_types)
  instance_type = var.instance_type
  key_name = "TF_eucentral_key"

  user_data = <<-EOF
                #!/bin/bash
                sudo apt-get update -y
                sudo apt-get install nginx -y
                sudo systemctl start nginx
                cd /var/www/html
                sudo rm -rf index.nginx-debian.html
                sudo echo "Hello World">index.html
                EOF

  tags = {
    Name = "HelloWorld"

  }
}