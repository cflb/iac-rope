# Create instance EC2
resource "aws_instance" "webservice" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.infra.key_name
  vpc_security_group_ids      = [ "${aws_security_group.rope_private_sg.id}"]
  subnet_id                   = "${aws_subnet.rope_subnet_1.id}"
  

  associate_public_ip_address = true


  tags = {
    Name        = var.tag_name
    Envirenment = "Staging"
    Project     = "IaC ROPE"
  }
}

resource "aws_key_pair" "infra" {
  key_name    = "infra-key"
  public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDLDv2DOSxLNsv9prD187ydkSjZ5Be/SdFoKlMoCDwjGrhMu0Cs4Pl1go0GwFOwVO+DhojBUJU4lJupQdSZ3BLKsC1bOLiPlTLQ6ff20ulJoCRoZO/T16/fHhEnvQsTO5HRcxRXL2PNGQrbxNwQfgZIU8RnwU89JMxk6S985H6pHrWnHviMV2XK+0hHXdh2AVim3h7mOAO2AuiqY1kkV+GSm5AHDEY5NZARvg80dDYmVJEEvvpGx0SMJ/bYvv2cBAPIDleuTfYnrhtTIDua+i3HmuvT401fZry15fQfx2LGhQEzuuhbngsmlvXHg9W+cktik8M1+pwVKv8BPP9LunOZo4efHlwL35ExRgdd72MCLVFHCbuzt9tIJ6YRh7GCbMR8GqQ8px1oF0PpBGMAuoWhWD5MTbHvhtfYBRZ6qZJHPXBhw8xHD3dZQwAqnv74pPgczM3CmhG6XOcclr3BfbgYGG5OSdfdQ43QEZpoZlcqtF1VkGOQOv0P/Omt9U7KgkXcGMMtf8PHki59e/jShKhom3Unjhfhj0NrihQ44T2q0BOJw8SQZdxDzGq2IhR666ho3WOpcLRn5OhCZ3bN/d2CXseVPMBK0mtkWaaoDczWEpYxN1Jzx1O6/cOKf4SKNPfezHB34eZDKbibkLYwpfUVjnaX838ODebnP5CKYt2GvQ== cflb@bacteria"
}

#resource "aws_iam_user_ssh_key" "infra" {
#  username    = aws_iam_user.infra.name
#  encoding    = "SSH"
#  public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAACAQDLDv2DOSxLNsv9prD187ydkSjZ5Be/SdFoKlMoCDwjGrhMu0Cs4Pl1go0GwFOwVO+DhojBUJU4lJupQdSZ3BLKsC1bOLiPlTLQ6ff20ulJoCRoZO/T16/fHhEnvQsTO5HRcxRXL2PNGQrbxNwQfgZIU8RnwU89JMxk6S985H6pHrWnHviMV2XK+0hHXdh2AVim3h7mOAO2AuiqY1kkV+GSm5AHDEY5NZARvg80dDYmVJEEvvpGx0SMJ/bYvv2cBAPIDleuTfYnrhtTIDua+i3HmuvT401fZry15fQfx2LGhQEzuuhbngsmlvXHg9W+cktik8M1+pwVKv8BPP9LunOZo4efHlwL35ExRgdd72MCLVFHCbuzt9tIJ6YRh7GCbMR8GqQ8px1oF0PpBGMAuoWhWD5MTbHvhtfYBRZ6qZJHPXBhw8xHD3dZQwAqnv74pPgczM3CmhG6XOcclr3BfbgYGG5OSdfdQ43QEZpoZlcqtF1VkGOQOv0P/Omt9U7KgkXcGMMtf8PHki59e/jShKhom3Unjhfhj0NrihQ44T2q0BOJw8SQZdxDzGq2IhR666ho3WOpcLRn5OhCZ3bN/d2CXseVPMBK0mtkWaaoDczWEpYxN1Jzx1O6/cOKf4SKNPfezHB34eZDKbibkLYwpfUVjnaX838ODebnP5CKYt2GvQ== cflb@bacteria"
#}