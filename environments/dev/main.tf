module "ec2_dev" {
    source = "../../modules/ec2"
    ami = var.ami
    instance_type = var.instance_type
    name = "dev-instance"

}