
module "Private-VM" {
    source = "./VM"
    disk-image = var.image
    subnet-id = module.subnets.subnet-id-manage
    vm-name = var.VM-name
    m-type = var.machine-type
    AZ  = var.zone
    service-name = var.service-name
    project-name = var.project-name
    
}

module "Private-Cluster" {
 source = "./Cluster"
 cluster-name = "private-cluster"
 cluster-region = "us-west1-b"
 subnet-link = module.subnets.subnet-link-Rest
 vpc = module.vpc.vpc-link
 network-name = "manage-subnet"
 poll-name = "poll1"
 pool-region = "us-west1-b"
 service-name = "GKE-service"
 project-name = var.project-name
 

}