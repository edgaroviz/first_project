### ArgoCD resource block
resource "helm_release" "argocd" {
  name       = "argocd"
  repository = "https://argoproj.github.io/argo-helm"
  chart      = "argo-cd"
  namespace  = "argocd"

  create_namespace = true

  values = [
    <<EOF
    server:
      service:
        type: LoadBalancer
    EOF
  ]
}

### Apply after all-in-one creation.
resource "kubernetes_manifest" "counter_service_app" {
  manifest = yamldecode(file("${path.module}/../meta/counter_service.yaml"))
}