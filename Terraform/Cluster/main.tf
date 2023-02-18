resource "google_container_cluster" "cluster-private" {
  name     = var.cluster-name
  location = var.cluster-region
  network = var.vpc
  subnetwork = var.subnet-link

  remove_default_node_pool = true
  initial_node_count       = 1
  master_authorized_networks_config {
    cidr_blocks {
        cidr_block = "10.5.0.0/16"
        display_name = var.network-name
    }
  }

  private_cluster_config {
    enable_private_nodes = true
    enable_private_endpoint = true
    master_ipv4_cidr_block = "172.16.0.0/28"
  }

  ip_allocation_policy {
    cluster_ipv4_cidr_block  = "10.16.0.0/16"
    services_ipv4_cidr_block = "10.12.0.0/16"
  }

  addons_config {
    http_load_balancing {
      disabled = true
    }
  }


}

resource "google_container_node_pool" "Node-Pool" {
  name       = var.poll-name
  location   = var.pool-region
  cluster    = google_container_cluster.cluster-private.name
  node_count = 1
 
  node_config {
    preemptible  = true
    machine_type = "e2-micro"
    service_account = google_service_account.cluster-sa.email
    oauth_scopes    = [
      "https://www.googleapis.com/auth/cloud-platform"

    ]
  }
}

resource "google_service_account" "cluster-sa" {
  account_id   = "default-gke-sa"
  display_name = var.service-name
}

resource "google_project_iam_member" "role_viewer" {
  project = var.project-name
  role = "roles/storage.objectViewer"
  member = "serviceAccount:${google_service_account.cluster-sa.email}"
}