resource "google_compute_network" "vpc_network"{
    project = "InnovatechGCP"
    name   = "Innovatech-VPC"
    auto_create_subnetworks = false
}


resource "google_compute_subnetwork" "GKE_subnet" {
    name          = "GKE-subnet"
    ip_cidr_range = "10.2.0.0/26"
    region        = "europe-west4"
    network = google_compute_network.vpc_network.id
    secondary_ip_range {
        range_name   = "pods"
        ip_cidr_range = "192.168.10.0/24"
    }
}