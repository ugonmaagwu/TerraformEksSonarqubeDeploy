###### vpc/outputs.tf 
output "aws_public_subnet" {
  value = aws_subnet.public_eksdemo_subnet.*.id
}

output "vpc_id" {
  value = aws_vpc.eksdemo.id
}