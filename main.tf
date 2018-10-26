resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

resource "random_pet" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  length = 2
}

output "random" {
  value = "${random_id.random.hex}"
}

output "random_pet" {
  value = "${random_pet.random.id}"
}
