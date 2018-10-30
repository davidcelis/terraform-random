variable "keeper" {
  default = "default"
}

resource "random_id" "not_as_random" {
  keepers {
    var = "${var.keeper}"
  }

  byte_length = 8
}

output "not_as_random" {
  value = "${random_id.not_as_random.hex}"
}
