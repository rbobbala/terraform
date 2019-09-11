resource "aws_key_pair" "terraform-demo" {
  key_name   = "terraform-demo"
  public_key = "${file("terraform-demo.pub")}"
}

resource "aws_instance" "my-instance" {
  count         = 1
  ami           = "${lookup(var.ami,var.aws_region)}"
  instance_type = "${var.instance_type}"
  key_name      = "${aws_key_pair.terraform-demo.key_name}"
  user_data     = "${file("install_apache.sh")}"

  tags = {
    Name  = "Terraform"
    Batch = "5AM"
  }
}
