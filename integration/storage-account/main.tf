module "storage-1" {
  source              = "../../modules/storage-account"
  storage_name        = "asafstoragepoc"
  resource_group_name = "testing"
  location            = "East US2"
  environment         = "dev"
}