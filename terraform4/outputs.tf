output "rackula_url" {
  value = "http://${module.my_server.public_ip}:8080"
}

output "rackula_server_public_ip" {
  value = module.my_server.public_ip
}

output "ssm_command" {
  value = "aws ssm start-session --target ${module.my_server.id} --region ap-southeast-1"
}