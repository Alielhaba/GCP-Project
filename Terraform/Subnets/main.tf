resource "google_compute_subnetwork" "subnets" {
  count = length(var.subnet-cider)
  name = var.subnet-name[count.index]
  ip_cidr_range = var.subnet-cider[count.index]
  region = var.subnet-region
  network = var.vpc-link
}
