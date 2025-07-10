
# 🚀 Terraform AWS 2-Tier VPC with EC2 Instance

This project creates a secure and modular **2-tier AWS VPC architecture** using Terraform. It provisions:
- A custom VPC
- Public and private subnets
- An EC2 instance in the public subnet
- Internet connectivity and secure access via SSH

---

## 📦 Project Structure

```
twoTierVpc/
├── main.tf                # Calls modules for VPC and EC2
├── variables.tf           # Input variables for the project
├── terraform.tfvars       # Variable values specific to this deployment
├── outputs.tf             # Outputs like VPC ID, Subnet IDs, EC2 public IP
├── modules/
│   ├── vpc/               # Reusable VPC module
│   └── ec2/               # Reusable EC2 module
```

---

## 🌐 What It Builds

- ✅ 1 VPC with custom CIDR (`10.0.0.0/16`)
- ✅ 1 Public Subnet (`10.0.1.0/24`)
- ✅ 1 Private Subnet (`10.0.2.0/24`)
- ✅ Internet Gateway + Route Table for public access
- ✅ EC2 instance in public subnet with SSH access
- ✅ Security group allowing SSH (port 22), HTTP (port 80), HTTPS (port 443)
- ✅ NAT Gateway support can be added for private subnet

---

## 🔧 Usage Instructions

### 1. Initialize Terraform
```bash
terraform init
```

### 2. Review the plan
```bash
terraform plan
```

### 3. Apply the configuration
```bash
terraform apply
```

---

## 🔐 SSH into EC2

Ensure your key pair (e.g., `bharat_ec2_key_pair.pem`) is available.

```bash
chmod 400 bharat_ec2_key_pair.pem
ssh -i bharat_ec2_key_pair.pem ec2-user@<EC2_PUBLIC_IP>
```

---

## 📤 Outputs

After applying, you’ll see outputs like:

```bash
vpc_id           = "vpc-xxxxxxxx"
public_subnet    = "subnet-xxxxxxxx"
private_subnet   = "subnet-yyyyyyyy"
ec2_public_ip    = "54.xxx.xxx.xxx"
```

---

## 📚 Prerequisites

- AWS CLI configured with credentials
- Terraform 1.0+
- Valid EC2 Key Pair in your AWS account

---

## 🧠 Concepts Demonstrated

- VPC + Subnet creation
- EC2 provisioning
- Modular Terraform design
- Public IP and security group setup
- Reusability of modules

---

## 📎 License

MIT License


---

## 🖼️ Architecture Diagram

![AWS 2-Tier VPC Architecture](https://raw.githubusercontent.com/bbpandey1/my-terraform-project/main/diagram.png)