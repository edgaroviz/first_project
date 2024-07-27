variable "cluster_name" {
  description = "The name of the EKS cluster"
  type        = string
  default = "ZeCluster"
}

variable "node_group_name" {
  description = "The name of the EKS node group"
  type        = string
  default = "ZeNodeGroup"
}

variable "subnet_public_ids" {
  description = "List of subnet IDs for the EKS node group"
  type        = list(string)
  default =
}

variable "subnet_private_ids" {
  description = "List of subnet IDs for the EKS node group"
  type        = list(string)
}

variable "node_role_name" {
  description = "The name of the IAM role for the EKS node group"
  type        = string
  default = "ZeNodeRole"
}

variable "cluster_role_name" {
  description = "The name of the IAM role for the EKS cluster"
  type        = string
  default     = "ZeClusterRole"
}