# Terraform-vm-code-with-modual

Project Name  Linux virtual machine with modual 
Overview
This project contains the infrastructure code for deploying a virtual machine setup in Azure, including modules for a virtual machine, load balancer, SQL database, and Azure Bastion. The infrastructure is managed using Terraform to ensure consistent and repeatable deployments.

Prerequisites
Terraform installed on your local machine
Azure CLI installed and configured
An Azure subscription
Architecture
The project deploys the following resources:

Virtual Machine (VM): The primary compute resource.
Load Balancer: Distributes traffic to the VM.
SQL Database: Managed SQL database for storing data.
Azure Bastion: Provides secure and seamless RDP/SSH connectivity to the VM.
Directory Structure
graphql
Copy code
├── main.tf                   # Main Terraform configuration file
├── variables.tf              # Variables definition file
├── outputs.tf                # Outputs definition file
├── vm
│   ├── main.tf               # VM module configuration
│   ├── variables.tf          # VM module variables
│   └── outputs.tf            # VM module outputs
├── load_balancer
│   ├── main.tf               # Load balancer module configuration
│   ├── variables.tf          # Load balancer module variables
│   └── outputs.tf            # Load balancer module outputs
├── sql_database
│   ├── main.tf               # SQL database module configuration
│   ├── variables.tf          # SQL database module variables
│   └── outputs.tf            # SQL database module outputs
├── bastion
│   ├── main.tf               # Azure Bastion module configuration
│   ├── variables.tf          # Azure Bastion module variables
│   └── outputs.tf            # Azure Bastion module outputs
└── README.md                 # This file
Usage
1. Clone the repository
sh
Copy code
git clone https://github.com/your-repo-name.git
cd your-repo-name
2. Configure Azure CLI
Ensure you are logged into your Azure account:

sh
Copy code
az login
3. Initialize Terraform
Initialize the Terraform configuration:

sh
Copy code
terraform init
4. Configure variables
Update the variables.tf files in the root and module directories with appropriate values for your Azure environment. You can also create a terraform.tfvars file to set variable values.

5. Plan the deployment
Generate and review an execution plan:

sh
Copy code
terraform plan
6. Apply the deployment
Apply the Terraform configuration to deploy the infrastructure:

sh
Copy code
terraform apply
7. Access the resources
Virtual Machine: Use Azure Bastion to securely access the VM.
Load Balancer: The load balancer will distribute traffic to the VM.
SQL Database: Connect to the SQL database using the connection string output by Terraform.
Outputs
After the deployment, Terraform will output relevant information such as:

VM public IP address
Load Balancer IP address
SQL Database connection string
Azure Bastion details
Clean Up
To destroy the resources created by Terraform, run:

sh
Copy code
terraform destroy
Contributing
Contributions are welcome! Please submit a pull request with your changes or create an issue to discuss a new feature or bug.

License
This project is licensed under the MIT License. See the LICENSE file for more details.

