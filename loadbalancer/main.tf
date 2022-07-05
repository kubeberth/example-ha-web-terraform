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

resource "kubeberth_loadbalancer" "loadbalancer-ab" {
  name    = "loadbalancer-ab"
  backends = [
    { server: "web-a" },
    { server: "web-b" },
  ]
  ports   = [
    {
      name: "http"
      protocol: "TCP"
      port: 80
      target_port: 80
    },
  ]
}

resource "kubeberth_loadbalancer" "loadbalancer-bc" {
  name    = "loadbalancer-bc"
  backends = [
    { server: "web-b" },
    { server: "web-c" },
  ]
  ports   = [
    {
      name: "http"
      protocol: "TCP"
      port: 80
      target_port: 80
    },
  ]
}

resource "kubeberth_loadbalancer" "loadbalancer-ac" {
  name    = "loadbalancer-ac"
  backends = [
    { server: "web-a" },
    { server: "web-c" },
  ]
  ports   = [
    {
      name: "http"
      protocol: "TCP"
      port: 80
      target_port: 80
    },
  ]
}

resource "kubeberth_loadbalancer" "loadbalancer-abc" {
  name    = "loadbalancer-abc"
  backends = [
    { server: "web-a" },
    { server: "web-b" },
    { server: "web-c" },
  ]
  ports   = [
    {
      name: "http",
      protocol: "TCP"
      port: 80
      target_port: 80
    },
  ]
}
