# Week 7: cPouta OpenTofu Deployment

Provisions a cPouta virtual machine and Apache web server using OpenTofu.

## How to Run
1. Place your cPouta credentials in `clouds.yaml`.
2. Copy `terraform.tfvars.example` to `terraform.tfvars` and fill in your values.
3. Deploy the infrastructure:
   ```bash
   tofu init
   tofu plan
   tofu apply