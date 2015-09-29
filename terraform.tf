resource "aws_instance" "web" {
    ami = "ami-123456"
    instance_type = "m1.small"
}
