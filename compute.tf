resource "google_compute_instance" "default" {
    project = var.project_name
    name =  "${var.project_name}-${var.environment}-${var.instance_name}"
    machine_type = "f1-micro"
    zone = "us-east1-d"

    tags = {
        Name = "${var.project_name}-${var.instance_name}"
        Description = "managed by terraform"
        Environment = var.environment
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
