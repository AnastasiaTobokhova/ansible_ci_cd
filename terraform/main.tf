terraform {
  required_providers {
    yandex = {
      source  = "yandex-cloud/yandex"
      version = "0.136.0"
    }
  }
}


provider "yandex" {
  token     = var.yc_token
  cloud_id  = var.yc_cloud_id
  folder_id = var.yc_folder_id
  zone      = var.yc_compute_default_zone
}

resource "yandex_compute_instance" "vm" {
  name        = "test-vm"
  platform_id = "standard-v2"
  zone        = "ru-central1-a"

  resources {
    cores  = 2
    memory = 2
  }

boot_disk {
  initialize_params {
    image_id = "fd82odtq5h79jo7ffss3"  
    size     = 10
  }
}

  network_interface {
    subnet_id = "e9b8hb9uuva6g4q5sks2"
    nat       = true
  }

  metadata = {
    ssh-keys = "anastasiatobohova:${var.ssh_public_key}"
  }
}

