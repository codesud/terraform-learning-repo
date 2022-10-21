data "aws_ami" "base-ami" {
  most_recent      = true
  name_regex       = "Centos7-with-Ansible"
  owners           = ["self"]
}
