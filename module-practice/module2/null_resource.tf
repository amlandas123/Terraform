resource "null_resource" "playbook" {

    depends_on = [aws_instance.app-amlan]

    connection {
        type = "ssh"
        user = "centos"
        password = "DevOps321"
        host = aws_instance.app-amlan.private_ip
  }

  provisioner "remote-exec" {
    # Bootstrap script called with private_ip of each node in the cluster
    inline = [
        "mkdir /tmp/test"
    ]
  }
}