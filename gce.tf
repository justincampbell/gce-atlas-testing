atlas { name = "justincampbell/gce-atlas-testing" }

provider "google" {
  account_file = "what"
  /* account_file = "gce.json2" */
  /* account_file = "${file("gce.json")}" */
  project = "hc-atlas-testing"
  region = "us-central1"
}

resource "google_compute_instance" "default" {
  name = "r1qkmfc0"
  machine_type = "n1-standard-1"
  zone = "us-central1-a"

  disk {
    image = "debian-7-wheezy-v20140814"
  }

  network_interface {
    network = "default"
  }
}
