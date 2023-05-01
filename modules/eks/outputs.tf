output "endpoint" {
  value = aws_eks_cluster.eksdemo.endpoint
}

output "kubeconfig-certificate-authority-data" {
  value = aws_eks_cluster.eksdemo.certificate_authority[0].data
}
output "cluster_id" {
  value = aws_eks_cluster.eksdemo.id
}
output "cluster_endpoint" {
  value = aws_eks_cluster.eksdemo.endpoint
}
output "cluster_name" {
  value = aws_eks_cluster.eksdemo.name
}