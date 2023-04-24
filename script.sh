#!/bin/bash
cd Terraform-Global-Data/terraform-code/ 
date
terraform fmt
rm -rf .terraform .terraform.lock.hcl

# Initialize Terraform
terraform init

# List available workspaces
echo "Available Workspaces:"
terraform workspace list

# Ask user for input
read -p "Enter the target workspace (dev/prod): " target_workspace

# Switch to target workspace
terraform workspace select $target_workspace

terraform plan

# approval
read -p "Do you want to apply the Terraform configuration? (yes/no): " approval
# Check if user approved
if [[ $approval == "yes" ]]; then
 
  # Apply Terraform configuration
  terraform apply
else
  echo "Terraform apply cancelled by user."
fi
