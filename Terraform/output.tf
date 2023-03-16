output "endpoint" {
  value = aws_eks_cluster.nielclust.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.nielclust.certificate_authority[0].data
}


output "region" {
  description = "AWS region"
  value       = var.region
}

output "cluster_name" {
  description = "Kubernetes Cluster Name"
  value       = var.clustern
}
