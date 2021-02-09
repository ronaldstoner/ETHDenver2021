set -x

npx tsc
./node_modules/webpack/bin/webpack.js .
