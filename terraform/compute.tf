resource "aws_instance" "bastion" {
  ami                         = "ami-0b6d9d3d33ba97d99"
  instance_type = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.bastion_sg.id]
  associate_public_ip_address = true
  key_name = "Cloud-portfolio-pair"

  tags = {
    Name = "terraform-bastion-host"
  }
}

resource "aws_instance" "private" {
  ami                    = "ami-0b6d9d3d33ba97d99"
  instance_type = var.instance_type
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.private_sg.id]
  key_name = "Cloud-portfolio-pair"

  tags = {
    Name = "terraform-private-server"
  }
}

resource "aws_instance" "web" {
  ami                         = "ami-0b6d9d3d33ba97d99"
  instance_type               = var.instance_type
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  associate_public_ip_address = true
  key_name                    = var.key_pair_name

  user_data = file("${path.module}/userdata.sh")

  tags = {
    Name = "terraform-web-server"
  }
}

