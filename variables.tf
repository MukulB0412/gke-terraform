variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  default = "asia-south1"
}

variable "cluster_name" {
  default = "mlops-gke-cluster"
}
