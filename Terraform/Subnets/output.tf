output "subnet-id-manage" {
  value = google_compute_subnetwork.subnets[0].id
}

output "subnet-id-Rest" {
  value = google_compute_subnetwork.subnets[1].id
}


output "subnet-region-manage" {
  value = google_compute_subnetwork.subnets[0].region
}

output "subnet-region-Rest" {
  value = google_compute_subnetwork.subnets[1].region
}

output "subnet-link-manage" {
  value = google_compute_subnetwork.subnets[0].self_link
}

output "subnet-link-Rest" {
  value = google_compute_subnetwork.subnets[1].self_link
}