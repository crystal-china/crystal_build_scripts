#!/usr/bin/env sh

last_tag=$(git tag --sort=committerdate |tail -n1)

rm -f lib.tar.gz && tar jcvf lib.tar.gz lib

gh release upload --repo crystal-china/magic-haversack $last_tag lib.tar.gz
