description = "Linkerd is an ultralight, security-first service mesh for Kubernetes. Linkerd adds critical security, observability, and reliability features to your Kubernetes stack with no code change required."
binaries = ["linkerd"]
test = "linkerd version --client"

platform "darwin" "amd64" {
  source = "https://github.com/linkerd/linkerd2/releases/download/stable-${version}/linkerd2-cli-stable-${version}-${os}"

  on "unpack" {
    rename {
      from = "${root}/linkerd2-cli-stable-${version}-${os}"
      to = "${root}/linkerd"
    }
  }
}

platform "darwin" "arm64" {
  source = "https://github.com/linkerd/linkerd2/releases/download/stable-${version}/linkerd2-cli-stable-${version}-${os}-${arch}"

  on "unpack" {
    rename {
      from = "${root}/linkerd2-cli-stable-${version}-${os}-${arch}"
      to = "${root}/linkerd"
    }
  }
}

linux {
  source = "https://github.com/linkerd/linkerd2/releases/download/stable-${version}/linkerd2-cli-stable-${version}-${os}-${arch}"

  on "unpack" {
    rename {
      from = "${root}/linkerd2-cli-stable-${version}-${os}-${arch}"
      to = "${root}/linkerd"
    }
  }
}

version "2.11.1" "edge-22.3.5" "stable-2.11.2" "edge-22.4.1" "edge-22.5.1"
        "edge-22.5.2" "edge-22.5.3" "edge-22.6.1" "edge-22.6.2" {
  auto-version {
    github-release = "linkerd/linkerd2"
  }
}
