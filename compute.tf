# resource "google_compute_address" "static-ip-address" {
#   count = "${var.vm_count}"
#   name = "static-ip-${count.index + 1}"
#   address_type = "EXTERNAL"
# }

resource "google_compute_instance" "default" {
    count = "${var.vm_count}"
    project = var.project_name
    name =  "${var.project_name}-${var.environment}-${var.instance_name}-${count.index + 1}"
    machine_type = "f1-micro"
    zone = "us-east1-d"

    labels = {
      name        = "${var.project_name}-${var.environment}-${var.instance_name}"
      description = "managed-by-terraform"
      environment = "${var.environment}"
    }


    boot_disk {
      initialize_params {
        image = "debian-cloud/debian-9"
      }
    }
    network_interface {
      network = "default"
    }
}
