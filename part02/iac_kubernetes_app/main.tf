terraform {
  required_version = "~>0.12"
  backend "remote" {
    organization = "datapunks"
    workspaces {
      name = "iac_kubernetes_app"
    }
  }
}
