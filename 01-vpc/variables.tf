variable "project" {
    default = "web-application"
  
}

variable "environment" {
    default = "dev"
  
}

variable "public_subnet_cidrs" {
    default = ["10.0.1.0/24", "10.0.2.0/24"]
  
}

variable "private_subnet_cidrs" {
    default = ["10.0.11.0/24", "10.0.12.0/24"]
  
}

