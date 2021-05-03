output "network_ip" {
    sensitive = false
    value = "${google_compute_instance.default.network_interface.0.network_ip}"
}
output "network" {
    sensitive = false
    value = "${google_compute_instance.default.network_interface.0.network}"
}