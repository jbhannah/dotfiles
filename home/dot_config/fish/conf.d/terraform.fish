if status is-interactive; and command -sq terraform
    abbr -a -g tf terraform
    abbr -a -g tfA terraform apply
    abbr -a -g tfi terraform init
    abbr -a -g tfI terraform import
    abbr -a -g tfp terraform plan
    abbr -a -g tfs terraform state
    abbr -a -g tfsl terraform state list
    abbr -a -g tfss terraform state show
    abbr -a -g tfsX terraform state rm
    abbr -a -g tfv terraform validate
    abbr -a -g tfX terraform destroy
end
