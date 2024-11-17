#!/usr/bin/env bash

rm -rf myproject
mkdir -p myproject
cd myproject || exit 1

corepack enable
corepack prepare pnpm@latest --activate
pnpm --version

git init
pnpm create playwright --browser=chromium --install-deps --quiet --gha --lang=Typescript
echo node_modules >>.gitignore

git add -A
git commit -am "scaffold playwright"

pnpm add --save-dev --save-exact typescript
pnpm add --save-dev --save-exact prettier
git commit -am "add typescript"

cat package.json

pnpm dlx playwright install chromium
