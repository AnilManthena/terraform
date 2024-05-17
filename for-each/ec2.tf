resource "aws_instance" "expense" {
    for_each = var.instance_names # each.key and each.value
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-05369898fcce9d590"]
    instance_type = each.value
    tags = merge(
        var.common_tags,
        {
            name = each.key
            module = each.key
        }
    )
}