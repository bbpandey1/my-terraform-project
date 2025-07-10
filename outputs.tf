output "vpc_id" {
  value = module.vpc.vpc_id
}
output "public_subnet" {
  value = module.vpc.public_subnet
}
output "private_subnet" {
  value = module.vpc.private_subnet
}
output "ec2_public_ip" {
  value = module.ec2.public_ip
}