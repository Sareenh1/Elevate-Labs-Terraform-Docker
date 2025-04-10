# Configure the Terraform provider for Docker
terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 3.0.2"
    }
  }
}

# Configure the Docker provider
provider "docker" {
  host = "unix:///var/run/docker.sock"
}

# Define a Docker image resource
resource "docker_image" "nginx" {
  name         = "nginx:latest"
  keep_locally = true  # Keep the image locally after provisioning
}

# Define a Docker container resource
resource "docker_container" "nginx_container" {
  name  = "nginx-test"
  image = docker_image.nginx.name
  ports {
    internal = 80
    external = 8080  # Map port 8080 on host to 80 in container
  }
}

# Output the container details
output "container_info" {
  value = {
    name = docker_container.nginx_container.name
    ip   = docker_container.nginx_container.network_data[0].ip_address
    port = docker_container.nginx_container.ports[0].external
  }
  description = "Details of the provisioned Nginx container"
}
