resource "aws_instance" "web_server" {

  # Amazon Linux 2 AMI
  ami = "ami-03caad32a158f72db"

  instance_type = "t2.micro"

  subnet_id = aws_subnet.public_subnet.id

  vpc_security_group_ids = [aws_security_group.ec2_sg.id]

  tags = {
    Name = "web_server"
  }
}
