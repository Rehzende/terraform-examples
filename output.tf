# output "network_ip" {
#     sensitive = false
#     value = "${google_compute_instance.default.network_interface.0.network_ip}"
# }
# output "network" {
#     count = "${var.vm_count}"
#     sensitive = false
#     value = "${google_compute_instance.default.network_interface.0.network}"
# }
