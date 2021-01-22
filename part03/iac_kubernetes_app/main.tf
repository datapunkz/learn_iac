terraform {
  required_version = "~>0.12"
  required_providers {
    kubernetes = {
      source  = "hashicorp/kubernetes"
      version = "1.13.3"
    }
  }  
  backend "remote" {
    organization = "datapunks"
    workspaces {
      name = "iac_kubernetes_app"
    }
  }
}
