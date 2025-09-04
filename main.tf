module "vpc" {
    source = "../vpc-module"
    #source = "git::https://github.com/Nareshkumart19/terraform-aws-vpc.git?ref=main"
    project = var.project
    environment = var.environment
    public_subnet_cidrs = var.public_subnet_cidrs
    private_subnet_cidrs = var.private_subnet_cidrs
    
}