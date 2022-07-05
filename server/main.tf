terraform {
  required_providers {
    kubeberth = {
      source  = "local/kubeberth/kubeberth"
      version = "0.10.0"
    }
  }
  required_version = "~> 1.2.0"
}

provider "kubeberth" {
  url = "http://api.kubeberth.k8s.arpa/api/v1alpha1/"
}

resource "kubeberth_server" "web-a" {
  name        = "web-a"
  running     = true
  cpu         = 1
  memory      = "1Gi"
  mac_address = "52:42:00:00:00:0a"
  hostname    = "web-a"
  disk        = {
    name = "web-a"
  }
  cloudinit   = {
    name = "web-a"
  }
}

resource "kubeberth_server" "web-b" {
  name        = "web-b"
  running     = true
  cpu         = 1
  memory      = "1Gi"
  mac_address = "52:42:00:00:00:0b"
  hostname    = "web-b"
  disk        = {
    name = "web-b"
  }
  cloudinit   = {
    name = "web-b"
  }
}

resource "kubeberth_server" "web-c" {
  name        = "web-c"
  running     = true
  cpu         = 1
  memory      = "1Gi"
  mac_address = "52:42:00:00:00:0c"
  hostname    = "web-c"
  disk        = {
    name = "web-c"
  }
  cloudinit   = {
    name = "web-c"
  }
}
