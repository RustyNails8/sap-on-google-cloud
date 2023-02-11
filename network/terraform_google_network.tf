resource "google_compute_network" "vpc_network_sap" {
  project                 = "bold-future-377415" # Replace this with your project ID in quotes
  name                    = "sap-auto-mode-network"
  auto_create_subnetworks = true
  mtu                     = 1460
}
