# Security grops

module "alb" {
    source = "../../sg-module"
    #source = ""
    project = var.project
    environment = var.environment
    
    sg_name = "alb"
    sg_description = "for  alb"
    vpc_id = local.vpc_id
}

module "bastion" {
    source = "../../sg-module"
    #source = ""
    project = var.project
    environment = var.environment
    
    sg_name = var.bastion_sg_name
    sg_description = var.bastion_sg_description
    vpc_id = local.vpc_id
}


#================= port openings


resource "aws_security_group_rule" "alb_https" {
  type              = "ingress"
  from_port         = 443
  to_port           = 443
  protocol          = "tcp"
  cidr_blocks = ["0.0.0.0/0"]
  security_group_id = module.alb.sg_id
}

resource "aws_security_group_rule" "bastion_laptop" {
  type              = "ingress"
  from_port         = 22
  to_port           = 22
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = module.bastion.sg_id
}



























































































































































