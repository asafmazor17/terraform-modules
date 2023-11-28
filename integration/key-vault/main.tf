module "kv_1" {
  source              = "../../modules/key-vault"
  resource_group_name = "testing"
  location            = "East US2"
  kv_name             = "asaftesting"
  environment         = "dev"
}