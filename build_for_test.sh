#!/bin/bash
ROOT_DIR=/mnt/c/Users/laurent/src/joplin
CURRENT_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
set -e
npm run build
# rsync -a ./dist/ $ROOT_DIR/ElectronClient/app/node_modules/joplin-turndown-plugin-gfm/dist/
# rsync -a ./lib/ $ROOT_DIR/ElectronClient/app/node_modules/joplin-turndown-plugin-gfm/lib/
rm -rf $ROOT_DIR/CliClient/node_modules/joplin-turndown-plugin-gfm
ln -s "$CURRENT_DIR" $ROOT_DIR/CliClient/node_modules/joplin-turndown-plugin-gfm
$ROOT_DIR/CliClient/run_test.sh HtmlToMd