variable aws_account{
    type = string
}

variable "clients_list"{
    type = map(any)
}

variable "instance_arn" {
    type = string
}
