locals {

   ami_id = "ami-090252cbe067a9e58"
   sg_id = "sg-05369898fcce9d590" # replace with your security ID
   #instance_type = "t3.micro"
   instance_type = var.instance_name == "db" ? "t3.small" : "t3.micro"
   tags = {
     name = "locals"
    }
}