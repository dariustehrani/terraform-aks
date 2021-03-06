resource "helm_release" "nginx_ingress_release" {
  name      = "nginx-ingress"
  chart     = "stable/nginx-ingress"
  namespace = "${var.ingress_namespace}"

  values = [
    "${file("ingress_values.yaml")}",
  ]

  set {
    name  = "controller.replicaCount"
    value = "3"
  }

  set {
    name  = "rbac.create"
    value = "true"
  }
  
}
