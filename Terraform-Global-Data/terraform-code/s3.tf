# Create S3 bucket
resource "aws_s3_bucket" "s3_bucket" {
  bucket = "psi-cricket-bucket-${terraform.workspace}"

  tags = {
    Name = lookup(var.env, terraform.workspace)
  }
}