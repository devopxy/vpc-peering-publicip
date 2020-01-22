# Security group configuration

# Default administration port
resource "aws_security_group" "administration-east" {
  name        = "administration-east"
  description = "Allow default administration service"
  vpc_id      = module.vpc-east.vpc_id
  tags = {
    Name = "administration"
  }

  # Open ssh port
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["176.26.37.120/32","10.0.0.0/16"]
  }

  # Allow icmp
  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["176.26.37.120/32","10.0.0.0/16"]
  }
}

# Default administration port
resource "aws_security_group" "administration-west" {
  name        = "administrationi-west"
  description = "Allow default administration service"
  vpc_id      = module.vpc-west.vpc_id
  tags = {
    Name = "administration"
  }

  # Open ssh port
  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["10.1.0.0/16"]
  }

  # Allow icmp
  ingress {
    from_port   = 8
    to_port     = 0
    protocol    = "icmp"
    cidr_blocks = ["10.1.0.0/16"]
  }

}







