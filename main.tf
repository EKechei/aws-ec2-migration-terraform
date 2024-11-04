provider "aws" {
  region = "us-east-1"
}

import {
  id = "i-057618886b256746a"

  to = aws_instance.example
}
