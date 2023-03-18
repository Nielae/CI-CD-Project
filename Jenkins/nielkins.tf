resource "aws_instance" "nielkins" {
  ami                         = var.ami
  instance_type               = var.itype
  subnet_id                   = var.subnetid
  security_groups             = var.sgroupid
  associate_public_ip_address = var.publicip
  key_name                    = var.keypair

}