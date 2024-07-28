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
resource "kubernetes_manifest" "counter-service-app" {
  manifest = yamldecode(file("${path.module}/../meta/counter_service.yaml"))
  depends_on = [helm_release.argocd]
}

resource "kubernetes_manifest" "metrics-server" {
  manifest = yamldecode(file("${path.module}/../meta/metrics_server.yaml"))
  depends_on = [helm_release.argocd]
}