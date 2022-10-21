resource "aws_spot_instance_request" "cheap_worker" {
  ami                    = data.aws_ami.base-ami.image_id
  instance_type          = "t3.micro"
  wait_for_fulfillment   = true 
  vpc_security_group_ids = [aws_security_group.allow_all.id]

  tags = {
    Name = var.COMPONENT
  }
}

 
      connection {
        type     = "ssh"
        user     = "centos"
        password = "DevOps321"
        # host     = self.public_ip
        host     = aws_spot_instance_request.cheap_worker.private_ip 
      } 
    provisioner "remote-exec" {
    inline = [
     "ansible-pull -U https://github.com/CodingSudeep/ansible.git -e COMPONENT=${var.COMPONENT} -e ENV=dev -e TAG_NAME=${var.APP_VERSION} roboshop.yml"
      ]
    }

