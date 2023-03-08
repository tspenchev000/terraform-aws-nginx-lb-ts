output "lb_endpoint" {
  value = "http://${aws_lb.my_app_eg1.dns_name}"
}

