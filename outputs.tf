output "public_ip" {
  description = "The public floating IP of the web server"
  value       = openstack_networking_floatingip_v2.web.address
}
output "website_url" {
  description = "URL to access the web server"
  value       = "http://${openstack_networking_floatingip_v2.web.address}"
}