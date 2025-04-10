# DevOps Internship Task 3: Infrastructure as Code with Terraform

This repository contains the solution for provisioning a Docker container using Terraform on an AWS t2.micro Ubuntu instance.

## Task Overview
- **Objective**: Provision a local Docker container using Terraform.
- **Tools**: Terraform, Docker.
- **Deliverables**: `main.tf`, execution logs.

## Steps Performed
1. Set up an Ubuntu t2.micro instance with Docker and Terraform.
2. Wrote `main.tf` to provision an Nginx container.
3. Executed:
   - `terraform init` (see `init.log`)
   - `terraform plan` (see `plan.log`)
   - `terraform apply` (see `apply.log`)
   - `terraform state list` (see `state.log`)
   - `terraform destroy` (see `destroy.log`)
4. Verified the container with `docker ps` and `curl localhost:8080`.

## Files
- `main.tf`: Terraform configuration file.
- `init.log`: Terraform initialization log.
- `plan.log`: Terraform plan log.
- `apply.log`: Terraform apply log.
- `state.log`: Terraform state list log.
- `destroy.log`: Terraform destroy log.

## Outcome
Successfully provisioned and destroyed an Nginx container using Infrastructure as Code principles with Terraform.




## Interview Questions Answers

1. **What is IaC?**  
   Infrastructure as Code is managing and provisioning infrastructure through machine-readable definition files rather than manual processes.

2. **How does Terraform work?**  
   Terraform uses declarative configuration files to define desired infrastructure state, then makes API calls to cloud providers to create/modify resources to match that state.

3. **What is Terraform state file?**  
   The state file (terraform.tfstate) tracks the relationship between real-world resources and your configuration, storing metadata about managed infrastructure.

4. **Difference between apply and plan**  
   `plan` shows what changes Terraform will make without actually making them. `apply` executes the changes after showing the plan.

5. **What are Terraform providers?**  
   Plugins that interact with APIs of cloud providers and other services. They define resource types and handle API calls (e.g., Docker, AWS, Azure providers).

6. **What is resource dependency?**  
   When one resource relies on another. Terraform automatically handles most dependencies, but you can explicitly define them with `depends_on`.

7. **How do you handle secret variables?**  
   Use Terraform variables with sensitive=true, environment variables, or secret management tools like HashiCorp Vault. Never commit secrets to version control.

8. **Explain the benefits of Terraform**  
   - Version-controlled infrastructure  
   - Consistent environments  
   - Documentation of infrastructure  
   - Automation reduces human error  
   - Multi-cloud support  
   - Reusable modules  
   - Change preview with plan
