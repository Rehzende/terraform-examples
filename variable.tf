variable "gcp_region" {
  description = "GCP region"
  default = "us-east"
}
variable "gcp_zone" {
  description = "GCP zone "
  default = "us-east-d"
}

variable "project_name" {
  description = "Project name"
  default = "mentoriaiac"
}

variable "instance_name" {
  description = "Instance name"
  default = "vm"
}


variable "vm_count" {
  description = "Vm  count"
  default = "2"
}

variable "environment" {
  description = "development environment"
  default = "dev"
}



