#!/bin/sh
for lang in $(ls | grep -e '\.lang$')
do
    sed -e '/\s*\/\*.*$/d' -e '/^\s*\*.*/d' -e '/^\s*\*\/.*/d' -e '/^\s*$/d' $lang > "${lang%.*}.json"
done
