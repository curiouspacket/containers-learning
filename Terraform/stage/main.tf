provider "kubernetes" {
  host                   = module.eks.cluster_endpoint
  cluster_ca_certificate = base64decode(module.eks.cluster_certificate_authority_data)
}

provider "aws" {
  region = "us-east-2"
  profile = "default"
}

terraform {
  backend "s3" {
    bucket = "terraformads2023"
    key = "stage/terraform.tfstate"
    region = "us-east-2"
  }
}

module "vpc" {
  source ="../network"
  name = var.name
  cidr_block = var.cidr_block
  az_count = var.az_count
  environment = var.environment
}

/*
module "firewall" {
    source ="../network/firewall.tf"

}
*/
module "eks" {
  source ="../eks"
  vpc_id = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets
}