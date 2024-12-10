# output "ec2_public_ip" {
#   value = aws_instance.my_ec2[*].public_ip
# }

# # Output the private IP
# output "ec2_private_ip" {
#   value = aws_instance.my_ec2[*].private_ip
# }
# For ke through data fetch karna hoga 
output "ec2_public_ip" {
  value = { for k, v in aws_instance.my_ec2 : k => v.public_ip }
}
