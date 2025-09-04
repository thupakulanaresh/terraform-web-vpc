
resource "aws_ssm_parameter" "alb_sg_id" {
  name  = "/${var.project}/${var.environment}/alb_sg_id"
  type  = "String"
  value = module.alb.sg_id
}

resource "aws_ssm_parameter" "bastion_sg_id" {
  name  = "/${var.project}/${var.environment}/bastion_sg_id"
  type  = "String"
  value = module.bastion.sg_id
}
























































