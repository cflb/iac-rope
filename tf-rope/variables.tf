variable "region" {
    type        = string
    description = "Define Região da VPC"
    default     = "us-east-1"
}

variable "ami" {
    type        = string
    description = "Imagem - Amazon Image"
    default     = "ami-0aeeebd8d2ab47354"
}

variable "instance_type" {
    type        = string
    description = "Type instace"    
    default     = "t2.micro"
}

variable "tag_name" {
    type        = string
    description = "Tag name"    
    default     = "ROPE (Django App)"
}

variable "shared_credentials" {
    type        = string
    description = "Shared Credentials"
    default = "~/.aws/credentials"
}

variable "profile_name" {
    type        = string
    description = "Delegate my Profile a Credentials"
    default = "infra"
}
