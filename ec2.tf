# # # ec2.tf
# resource "aws_instance" "testEC201" {
#   ami                         = "ami-063db2954fe2eec9f"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.publicSubnet1.id
#   key_name                    = "xgro"
#   associate_public_ip_address = "true"
#   user_data                   = <<-EOF
#               #!/bin/bash
#               echo "Hello, World" > index.html
#               nohup busybox httpd -f -p 8080 &
#               EOF
#   vpc_security_group_ids = [
#     aws_security_group.publicSG01.id
#   ]
#   root_block_device {
#     volume_size = 8
#     volume_type = "gp2"
#     tags = {
#       "Name" = "test-private-ec2-01-vloume-1"
#     }
#   }

#   tags = {
#     "Name" = "test-ec2-01"
#   }
# }

# resource "aws_instance" "testEC202" {
#   ami                         = "ami-063db2954fe2eec9f"
#   instance_type               = "t2.micro"
#   subnet_id                   = aws_subnet.publicSubnet2.id
#   key_name                    = "xgro"
#   associate_public_ip_address = "true"
#   user_data                   = <<-EOF
#               #!/bin/bash
#               echo "Hello, World" > index.html
#               nohup busybox httpd -f -p 8080 &
#               EOF
#   vpc_security_group_ids = [
#     aws_security_group.publicSG01.id
#   ]
#   root_block_device {
#     volume_size = 8
#     volume_type = "gp2"
#     tags = {
#       "Name" = "test-private-ec2-02-vloume-1"
#     }
#   }

#   tags = {
#     "Name" = "test-ec2-02"
#   }
# }
