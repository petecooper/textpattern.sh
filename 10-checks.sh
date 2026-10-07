#!/bin/sh

#/*
# * textpattern.sh
# * https://github.com/petecooper/textpattern.sh/
# *
# * Copyright (C) 2026 Pete Cooper
# *
# * textpattern.sh is free software; you can redistribute it and/or modify
# * it under the terms of the GNU General Public License as published by the
# * Free Software Foundation, version 2.
# *
# * textpattern.sh is distributed in the hope that it will be useful, but
# * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
# * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU General Public License
# * for more details.
# *
# * You should have received a copy of the GNU General Public License along
# * with Textpattern. If not, see <https://www.gnu.org/licenses/>.
# */

echo '=> Checking `git`...'
GIT_VERSION="$(git --version 2>&1)"
if [ "$GIT_VERSION" != "command not found" ]; then
	echo '   `git` found'
else
	echo '   `git` NOT found'
fi

echo '\n=> Checking `gzip`...'
GZIP_VERSION="$(gzip -V 2>&1)"
if [ "$GZIP_VERSION" != "command not found" ]; then
	echo '   `gzip` found'
else
	echo '   `gzip` NOT found'
fi

echo '\n=> Checking `php`...'
PHP_VERSION="$(php -v 2>&1)"
if [ "$PHP_VERSION" != "command not found" ]; then
	echo '   `php` found'
else
	echo '   `php` NOT found'
fi

echo '\n=> Checking `shasum`...'
SHASUM_VERSION="$(shasum -v 2>&1)"
if [ "$SHASUM_VERSION" != "command not found" ]; then
	echo '   `shasum` found'
else
	echo '   `shasum` NOT found'
fi

echo '\n=> Checking `tar`...'
TAR_VERSION="$(tar --version 2>&1)"
if [ "$TAR_VERSION" != "command not found" ]; then
	echo '   `tar` found'
else
	echo '   `tar` NOT found'
fi

echo '\n=> Checking `xz`...'
XZ_VERSION="$(xz --version 2>&1)"
if [ "$XZ_VERSION" != "command not found" ]; then
	echo '   `xz` found'
else
	echo '   `xz` NOT found'
fi

echo '\n=> Checking `zip`...'
ZIP_VERSION="$(zip -v 2>&1)"
if [ "$ZIP_VERSION" != "command not found" ]; then
	echo '   `zip` found'
else
	echo '   `zip` NOT found'
fi
