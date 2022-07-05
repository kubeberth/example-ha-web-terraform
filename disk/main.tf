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

resource "kubeberth_disk" "web-a" {
  name   = "web-a"
  size   = "8Gi"
  source = {
    archive = "ubuntu-20.04"
  }
}

resource "kubeberth_disk" "web-b" {
  name   = "web-b"
  size   = "8Gi"
  source = {
    archive = "ubuntu-20.04"
  }
}

resource "kubeberth_disk" "web-c" {
  name   = "web-c"
  size   = "8Gi"
  source = {
    archive = "ubuntu-20.04"
  }
}
