variable "name" {
  default = "Subject Name Here"
}

variable "hometown" {
  default = "Subject Hometown Here"
}

resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}

output "greeting" {
  value = "Unbelievable! You, ${var.name}, must be the pride of ${var.hometown}."
}
