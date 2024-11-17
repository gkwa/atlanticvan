set shell := ["bash", "-uec"]

default:
    @just --list

fmt:
    shellcheck *.sh
    shfmt -w -s -i 4 *.sh
    terraform fmt -recursive .
    prettier --ignore-path=.prettierignore --config=.prettierrc.json --write .
    just --unstable --fmt
