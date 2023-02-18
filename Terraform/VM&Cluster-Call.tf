
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

