resource "aws_instance" "rabbitmq" {
  ami                    = data.aws_ami.centos-8-ami.image_id
  instance_type          = var.instance_type
  subnet_id              = var.subnets[0]
#  vpc_security_group_ids = [aws_security_group.sg.id]
#  iam_instance_profile   = aws_iam_instance_profile.instance_profile.name
  tags = {
    Name = "${var.env}-${var.name}-rabbitmq"
  }
}