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

resource "kubeberth_archive" "ubuntu-2004" {
  name       = "ubuntu-20.04"
  repository = "http://minio.home.arpa:9000/kubeberth/images/ubuntu-20.04-server-cloudimg-arm64.img"
}
