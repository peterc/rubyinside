#!/bin/bash
# One-shot deploy: build Hugo locally and rsync to toluca, replacing
# /var/www/rubyinside.com/ with the freshly built site.
set -euo pipefail
cd "$(dirname "$0")"

echo "→ building..."
hugo --minify --cleanDestinationDir

echo "→ syncing to toluca:/var/www/rubyinside.com/ ..."
rsync -rltz --delete public/ toluca:/var/www/rubyinside.com/
ssh toluca 'chown -R caddy:caddy /var/www/rubyinside.com'

echo "✓ deployed"
