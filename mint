#!/bin/sh
# for linux & osx
# @author AEPKILL

basedir=$(dirname "$(echo "$0" | sed -e 's,\\,/,g')")

export TS_NODE_PROJECT="$basedir/packages/scripts/tsconfig.json"

case $(uname) in
*CYGWIN*) basedir=$(cygpath -w "$basedir") ;;
esac

if [ -x "$basedir/node" ]; then
    "$basedir/node" "-r" "tsconfig-paths/register" "$basedir/node_modules/ts-node/dist/bin.js" "--files" "$basedir/packages/scripts/cli.ts" "$@"
    ret=$?
else
    node "$basedir/node_modules/ts-node/dist/bin.js" "-r" "tsconfig-paths/register" "--files" "$basedir/packages/scripts/cli.ts" "$@"
    ret=$?
fi

exit $ret
