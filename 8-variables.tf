variable "aws_ami" {
    type = string
    description = "Custom rhel9 image with nginx preinstalled and configured for tests"
}

variable "aws_region" {
    type = string
    description = "AWS Region "
}
