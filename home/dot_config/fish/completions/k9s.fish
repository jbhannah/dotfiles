if command -sq k9s; and command -sq yq
    test -f (brew --prefix)/share/fish/vendor_completions.d/k9s.fish
    and source (brew --prefix)/share/fish/vendor_completions.d/k9s.fish

    set -q KUBECONFIG
    or set -l KUBECONFIG ~/.kube/config

    test -f $KUBECONFIG
    and set -l clusters (yq e '.clusters[].name' $KUBECONFIG)

    set -q clusters
    and complete -c k9s -l context -x -a "$clusters"
end
