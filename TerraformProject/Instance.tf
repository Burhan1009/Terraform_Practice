data "aws_ami" "os_image" {
  owners      = ["679593333241"]
  most_recent = true
  filter {
    name   = "state"
    values = ["available"]
  }
  filter {
    name   = "name"
    values = ["ubuntu/images/*"]
  }
  filter {
    name   = "architecture" # Correct filter name
    values = ["x86_64"]     # Or "arm64" based on your requirements
  }
}

resource "aws_key_pair" "my_key" {
  key_name   = "batch-8"           # The key name
  public_key = file("batch-8.pub") # Specifies the public key file
}

resource "aws_default_vpc" "default" {}

resource "aws_security_group" "my_sg" {
  name        = "My Security"
  description = "This is an SG created using Terraform"
    vpc_id      = aws_default_vpc.default.id

  # Ingress rules for incoming traffic
  ingress {
    description = "Allow access to SSH port 22"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow access to HTTP port 80"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  # Egress rules for outgoing traffic
  egress {
    description = "Allow all outgoing traffic"
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "Burhan Securities"
  }
}

resource "aws_instance" "my_ec2" {
  count                       = var.aws_instance_count
  ami                         = data.aws_ami.os_image.id # Replace with a valid AMI ID for your region
  instance_type               = var.aws_ec2_instance_type
  security_groups             = [aws_security_group.my_sg.name]
  key_name                    = aws_key_pair.my_key.key_name
  associate_public_ip_address = true

  root_block_device {
    volume_size = var.aws_root_volume_size
    volume_type = "gp2"
  }
  tags = {
    Name = var.aws_ec2_instance_name
  }
}
