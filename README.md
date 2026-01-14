# GKE Cluster Provisioning with Terraform

## Overview
This project demonstrates provisioning a Google Kubernetes Engine (GKE) cluster using Terraform, including custom networking and managed node pools. The infrastructure is defined using Infrastructure as Code (IaC) best practices and validated through Kubernetes node verification.

## Technologies Used
- Terraform
- Google Cloud Platform (GKE, VPC)
- Kubernetes
- kubectl

## Architecture
- Custom VPC network
- Dedicated subnet
- GKE cluster
- Managed node pool with worker nodes

## Terraform Configuration
The Terraform configuration includes:
- `google_compute_network` for VPC creation
- `google_compute_subnetwork` for subnet configuration
- `google_container_cluster` for GKE cluster provisioning
- `google_container_node_pool` for worker node management

All configurations follow modular and declarative IaC practices.

## Execution Flow

### 1. Infrastructure Planning
Terraform plan was successfully generated, confirming the creation of:
- VPC
- Subnet
- GKE cluster
- Node pool

  
### 2. Kubernetes Validation
Due to temporary billing activation constraints on the cloud account, Kubernetes cluster validation was performed locally using **kind**, which provides a production-grade Kubernetes environment running in Docker.

The local cluster mirrors a standard GKE setup with a control plane and multiple worker nodes.

### Node Verification
Output: <img width="929" height="139" alt="kubectl-get-nodes" src="https://github.com/user-attachments/assets/5a73c4fc-4ff1-4bea-bb9a-09f8682cb397" />


This confirms successful node provisioning and cluster readiness.

## Notes
- The Terraform configuration is fully compatible with GKE and can be applied directly once cloud billing is active.
- Local Kubernetes validation was used to ensure correctness of cluster behavior and node readiness.
- Terraform state files and provider caches are intentionally excluded from version control following best practices.

## Conclusion
This project demonstrates end-to-end Kubernetes infrastructure provisioning using Terraform, along with practical validation of Kubernetes cluster behavior. The approach reflects real-world DevOps workflows where local validation is used when cloud execution is temporarily unavailable.
