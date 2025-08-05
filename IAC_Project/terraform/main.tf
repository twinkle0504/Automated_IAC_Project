

provider "aws" {
  region = "ap-south-1" # Mumbai
}

# S3 Bucket
resource "aws_s3_bucket" "my_bucket" {
  bucket = "my-simple-bucket-123456"  # unique hona chahiye
  acl    = "private"

  tags = {
    Name = "MySimpleBucket"
  }
}

# IAM Role for EC2 (optional)
resource "aws_iam_role" "ec2_role" {
  name = "ec2_s3_role"

  assume_role_policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Principal = { Service = "ec2.amazonaws.com" }
      Action = "sts:AssumeRole"
    }]
  })
}

# IAM Policy attach
resource "aws_iam_role_policy" "s3_access" {
  name = "s3_full_access"
  role = aws_iam_role.ec2_role.id

  policy = jsonencode({
    Version = "2012-10-17"
    Statement = [{
      Effect = "Allow"
      Action = ["s3:*"]
      Resource = "*"
    }]
  })
}

# IAM Instance Profile
resource "aws_iam_instance_profile" "ec2_profile" {
  name = "ec2_profile"
  role = aws_iam_role.ec2_role.name
}

# EC2 Instance
resource "aws_instance" "my_ec2" {
  ami                         = "ami-0cda377a1b884a1bc" # Ubuntu 22.04 - Mumbai
  instance_type               = "t2.micro"
  key_name                    = "your-key-name" # replace this
  iam_instance_profile        = aws_iam_instance_profile.ec2_profile.name

  tags = {
    Name = "MySimpleEC2"
  }
}

