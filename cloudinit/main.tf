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

resource "kubeberth_cloudinit" "web-a" {
  name         = "web-a"
  network_data = ""
  user_data    = <<EOF
#cloud-config
timezone: Asia/Tokyo
ssh_pwauth: True
password: ubuntu
chpasswd: { expire: False }
disable_root: false
#ssh_authorized_keys:
#- ssh-rsa XXXXXXXXXXXXXXXXXXXXXXXXX
package_update: true
packages:
 - nginx
runcmd:
  - hostname > /var/www/html/index.html
EOF
}

resource "kubeberth_cloudinit" "web-b" {
  name         = "web-b"
  network_data = ""
  user_data    = <<EOF
#cloud-config
timezone: Asia/Tokyo
ssh_pwauth: True
password: ubuntu
chpasswd: { expire: False }
disable_root: false
#ssh_authorized_keys:
#- ssh-rsa XXXXXXXXXXXXXXXXXXXXXXXXX
package_update: true
packages:
 - nginx
runcmd:
  - hostname > /var/www/html/index.html
EOF
}

resource "kubeberth_cloudinit" "web-c" {
  name         = "web-c"
  network_data = ""
  user_data    = <<EOF
#cloud-config
timezone: Asia/Tokyo
ssh_pwauth: True
password: ubuntu
chpasswd: { expire: False }
disable_root: false
#ssh_authorized_keys:
#- ssh-rsa XXXXXXXXXXXXXXXXXXXXXXXXX
package_update: true
packages:
 - nginx
runcmd:
  - hostname > /var/www/html/index.html
EOF
}
