cat << 'EOF' > README.md
# Elevate Labs DevOps Internship - Task 3: Infrastructure as Code (IaC) with Terraform

## Objective
Provision a local Docker container running an Nginx web server using Terraform.

## Tools & Technologies
- **Terraform**
- **Docker** Engine
- **kreuzwerker/docker** Provider

---

## Steps Executed
1. **Configuration (`main.tf`)**: Defined Docker provider, pulled `nginx:alpine` image, and deployed container mapped to port `8081`.
2. **Initialization**: Initialized provider plugins using `terraform init`.
3. **Execution Plan**: Generated preview using `terraform plan`.
4. **Provisioning**: Applied infrastructure changes using `terraform apply`.
5. **State Inspection**: Inspected resources using `terraform state list` and `terraform state show`.
6. **Teardown**: Destroyed provisioned resources using `terraform destroy`.

---
