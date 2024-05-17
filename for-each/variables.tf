variable "instance_names" {
    type        =   map
    default     =   {
      db        = "t3.small"
      backend   = "t3.micro"
      frontend  = "t3.micro"
    }
}

variable "common_tags" {
    type = map
    default = {
        Project = "expense"
        Terraform = "true"
    }
  
}

variable "domain_name" {
    default = "devops4me.cloud"
  
}
variable "zone_id" {
    default = "Z0881026232A15YS6ABTX"
}