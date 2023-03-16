resource "aws_eks_cluster" "nielclust" {
  name               = var.clustern
  role_arn           = aws_iam_role.nielclust.arn

  vpc_config {
    subnet_ids       = var.subnetsid
}


depends_on = [
    aws_iam_role_policy_attachment.nielclust-AmazonEKSClusterPolicy,
    aws_iam_role_policy_attachment.nielclust-AmazonEKSVPCResourceController,
  ]
}


locals {
  cluster_name = "nielclust"
}

resource "local_file" "nfile" {
  content  = "resource.aws_eks_cluster.nielclust"
  filename = "nfile_${local.cluster_name}"
}
