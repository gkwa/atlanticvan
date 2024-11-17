#!/usr/bin/env bash

set -xe

if ! incus image info example-001 &>/dev/null; then
    packer init .
    packer build ubuntu.pkr.hcl
fi

terraform init

terraform plan -destroy -out=tfplan
terraform apply tfplan

terraform plan -out=tfplan
terraform apply tfplan

incus file push playwright_init.sh example-001/root/playwright_init.sh
incus exec example-001 -- bash -xe /root/playwright_init.sh
