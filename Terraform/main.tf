resource "aws_eks_node_group" "nielnode" {
  cluster_name                = aws_eks_cluster.nielclust.name
  node_group_name             = var.nodem
  node_role_arn               = aws_iam_role.nielnode.arn
  subnet_ids                  = var.subnetsid
  capacity_type               = "ON_DEMAND"  
  instance_types              = ["t3.medium"]
  disk_size                   = 20 

  scaling_config {
    desired_size = 2
    max_size     = 2
    min_size     = 2
  }

  update_config {
    max_unavailable = 1
  }

depends_on = [
    aws_iam_role_policy_attachment.nielnode-AmazonEKSWorkerNodePolicy,
    aws_iam_role_policy_attachment.nielnode-AmazonEKS_CNI_Policy,
    aws_iam_role_policy_attachment.nielnode-AmazonEC2ContainerRegistryReadOnly,
  ]
}

