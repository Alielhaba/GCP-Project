resource "google_compute_network" "main-vpc" {
  name = var.vpc-name
  auto_create_subnetworks = false
}

resource "google_compute_router" "router" {
  name    = "my-router"
  region  = var.subnet-region
  network = google_compute_network.main-vpc.id
}
######################################################
resource "google_compute_firewall" "allow-ssh-http" {
  name    = var.firewall-name
  network = google_compute_network.main-vpc.id
  direction = var.dir-type
  source_ranges = ["35.235.240.0/20"]
  priority = 100
  allow {
    protocol = "tcp"
    ports    = ["22", "80"]
  }
}
######################################################
resource "google_compute_router_nat" "nat" {
  name                               = var.nat-name
  router                             = google_compute_router.router.name
  region                             = var.region-name
  nat_ip_allocate_option             = "AUTO_ONLY"
  source_subnetwork_ip_ranges_to_nat = "LIST_OF_SUBNETWORKS"
  subnetwork {
    name                    = var.subnet-id
    source_ip_ranges_to_nat = ["ALL_IP_RANGES"]
  }
  log_config {
    enable = true
    filter = "ERRORS_ONLY"
  }
}
#####################################################
