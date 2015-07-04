#!/usr/bin/env bash
set -e
if [ -n "$COVERAGE" ]; then
	cd shop
	wget https://scrutinizer-ci.com/ocular.phar
	php ocular.phar code-coverage:upload -v --format=php-clover ~/builds/ss/shop/coverage.xml
fi
