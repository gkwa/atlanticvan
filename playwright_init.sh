#!/usr/bin/env bash

rm -rf myproject
mkdir -p myproject
cd myproject || exit 1

corepack enable
corepack prepare pnpm@latest --activate
pnpm --version

pnpm create playwright --browser=chromium --install-deps --quiet --gha --lang=Typescript
echo node_modules >>.gitignore

pnpm add --save-dev --save-exact typescript
pnpm add --save-dev --save-exact prettier

cat package.json

pnpm dlx playwright install chromium
