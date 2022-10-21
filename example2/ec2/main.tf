# Creates EC2
resource "aws_instance" "b49-ec2" {
  ami                     = "ami-063dd2bd5641ef903"
  instance_type           = "t3.micro"
  vpc_security_group_ids  = [var.sg]
}

  provisioner "remote-exec" {

      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        host     = self.public_ip
      }

    inline = [
     "ansible-pull -U https://github.com/CodingSudeep/ansible.git -e COMPONENT=frontend -e ENV=dev -e TAG_NAME=3.0.0 roboshop.yml"
    ]
  }


variable "sg" {}

output "pub-ip" {
  value = aws_instance.b49-ec2.public_ip 
}