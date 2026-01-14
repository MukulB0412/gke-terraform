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

