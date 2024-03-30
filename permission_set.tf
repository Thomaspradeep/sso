modules d2_client_perm_set {
source = "./modules/perm_set"
for_each = var.client_list
client_name = each.key
instance_arn = var.instance_arn
}
