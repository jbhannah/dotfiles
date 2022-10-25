if status is-interarctive; and command -sq gh
    # Pull requests (p)
    abbr -a -g ghp gh pr
    abbr -a -g ghpc gh pr checkout
    abbr -a -g ghpC gh pr create
    abbr -a -g ghpl gh pr list
    abbr -a -g ghpv gh pr view
    abbr -a -g ghpvw gh pr view --web

    # Repositories (r)
    abbr -a -g ghr gh repo
    abbr -a -g ghrc gh repo clone
    abbr -a -g ghrC gh repo create
    abbr -a -g ghrv gh repo view
    abbr -a -g ghrvw gh repo view --web

    # Releases (R)
    abbr -a -g ghR gh release
    abbr -a -g ghRC gh release create
    abbr -a -g ghRl gh release list
    abbr -a -g ghRv gh release view
    abbr -a -g ghRvw gh release view --web
end
