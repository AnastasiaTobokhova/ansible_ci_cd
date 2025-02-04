variable "yc_token" {
  description = "Yandex Cloud OAuth токен"
  type        = string
}

variable "yc_cloud_id" {
  description = "ID облака Yandex Cloud"
  type        = string
}

variable "yc_folder_id" {
  description = "ID каталога Yandex Cloud"
  type        = string
}

variable "yc_compute_default_zone" {
  description = "Зона по умолчанию в Yandex Cloud"
  type        = string
  default     = "ru-central1-a"
}

variable "ssh_public_key" {
  description = "SSH public key for the VM"
  type        = string
}
