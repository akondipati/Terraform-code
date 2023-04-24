# Create EC2 instance
resource "aws_instance" "ec2_instance" {
  count         = local.instance_count[terraform.workspace]
  ami           = var.ami_ID
  instance_type = var.instance_type
  subnet_id     = aws_subnet.public.id
  tags = {
    Name = "${local.instance_name_prefix[terraform.workspace]}_${count.index + 1}"
  }
}