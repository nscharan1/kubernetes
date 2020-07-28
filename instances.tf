# Provision Docker swarm master Node with centos 7.
resource "aws_instance" "K8S-Master" {
  ami                    = var.K8S_AMI_ID
  instance_type          = "t2.medium"
  subnet_id              = var.SUBNETID
  vpc_security_group_ids = [aws_security_group.master-sg.id]
  key_name               = aws_key_pair.k8sKeyPair.key_name
  iam_instance_profile   = aws_iam_instance_profile.server_access_profile.name
  user_data = file("requirements.sh")
  tags = {
    Name = "K8S-Master"
  }


  # Connection to execute the file & remote-exec provisioners.
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "centos"
    private_key = file("testkey")
  }

  # Copy sample bootstrap files
  provisioner "file" {
        source      = "bootstrap.sh"
        destination = "/home/centos/bootstrap.sh"
  }
  provisioner "file" {
        source      = "bootstrap-master.sh"
        destination = "/home/centos/bootstrap-master.sh"
  }

  # bootstrap Master Node.
  provisioner "remote-exec" {
    inline = [
        "chmod +x /home/centos/bootstrap.sh",
        "/home/centos/bootstrap.sh"
      ]
  }

  # Initialise kubernetes cluster.
  provisioner "remote-exec" {
    inline = [
        "chmod +x /home/centos/bootstrap-master.sh",
        "/home/centos/bootstrap-master.sh"
      ]
  }
}

# Provision Docker swarm worker Node with centos 7.
resource "aws_instance" "K8S-Worker-1" {
  ami                    = var.K8S_AMI_ID
  instance_type          = "t2.medium"
  subnet_id              = var.SUBNETID
  vpc_security_group_ids = [aws_security_group.worker-sg.id]
  key_name               = aws_key_pair.k8sKeyPair.key_name
  iam_instance_profile   = aws_iam_instance_profile.server_access_profile.name
  user_data = file("requirements.sh")
  tags = {
    Name = "K8S-Worker-1"
  }

  # Connection to execute the file & remote-exec provisioners.
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "centos"
    private_key = file("testkey")
  }


  # Copy sample bootstrap files
  provisioner "file" {
        source      = "bootstrap.sh"
        destination = "/home/centos/bootstrap.sh"
  }

  # bootstrap Worker Node.
  provisioner "remote-exec" {
    inline = [
        "chmod +x /home/centos/bootstrap.sh",
        "/home/centos/bootstrap.sh"
      ]
  }
}

# Provision Docker swarm worker Node with centos 7.
resource "aws_instance" "K8S-Worker-2" {
  ami                    = var.K8S_AMI_ID
  instance_type          = "t2.medium"
  subnet_id              = var.SUBNETID
  vpc_security_group_ids = [aws_security_group.worker-sg.id]
  key_name               = aws_key_pair.k8sKeyPair.key_name
  iam_instance_profile   = aws_iam_instance_profile.server_access_profile.name
  user_data = file("requirements.sh")
  tags = {
    Name = "K8S-Worker-2"
  }

  # Connection to execute the file & remote-exec provisioners.
  connection {
    host        = self.public_ip
    type        = "ssh"
    user        = "centos"
    private_key = file("testkey")
  }

  # Copy sample bootstrap files
  provisioner "file" {
        source      = "bootstrap.sh"
        destination = "/home/centos/bootstrap.sh"
  }

  # bootstrap Worker Node.
  provisioner "remote-exec" {
    inline = [
        "chmod +x /home/centos/bootstrap.sh",
        "/home/centos/bootstrap.sh"
      ]
  }
}
