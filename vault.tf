provider "vault" {
 address = var.vault_addr
 token = var.vault_token
}
variable "vault_addr" {
    default = "https://vault-stoffee-io.vault.f4cfade2-df28-47f2-a365-28cd5d95d9a0.aws.hashicorp.cloud:8200"
}
variable "vault_token" {
}

data "vault_aws_access_credentials" "creds" {
  backend = "aws"
  role    = "route53"
}