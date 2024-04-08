module "ec2_prod" {
    source = "../../modules/ec2"
    ami = var.ami
    instance_type = var.instance_type
    name = "prod-instance"
}