#!/usr/bin/env bash

terraform plan -destroy -out=tfplan
terraform apply tfplan

# incus image delete example-001
