resource "random_id" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  byte_length = 8
}

output "random" {
  value = "${random_id.random.hex}"
}

resource "random_string" "random" {
  keepers {
    uuid = "${uuid()}"
  }

  length = 20
}

output "random_string" {
  value = "${random_string.random.result}"
}
