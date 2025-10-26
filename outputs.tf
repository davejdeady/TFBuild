output "instance_public_dns" {
  value       = "http://${aws_instance.nginx1_i.public_dns}"
  description = "public DNS hostname"

}

output "aws_alb_public_dns" {
  value       = "http://${aws_lb.nginx_i.dns_name}"
  description = "ALB DNS N"
}