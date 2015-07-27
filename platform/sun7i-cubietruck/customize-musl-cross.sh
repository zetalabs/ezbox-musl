#!/bin/sh
# Customize musl-cross for sun7i-cubietruck platform
# 
# Copyright (C) 2015 Zeta Labs
# 
# Permission to use, copy, modify, and/or distribute this software for any
# purpose with or without fee is hereby granted, provided that the above
# copyright notice and this permission notice appear in all copies.
# 
# THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES WITH
# REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF MERCHANTABILITY
# AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR ANY SPECIAL, DIRECT,
# INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES WHATSOEVER RESULTING FROM
# LOSS OF USE, DATA OR PROFITS, WHETHER IN AN ACTION OF CONTRACT, NEGLIGENCE OR
# OTHER TORTIOUS ACTION, ARISING OUT OF OR IN CONNECTION WITH THE USE OR
# PERFORMANCE OF THIS SOFTWARE.

# Fail on any command failing, show commands:
set -ex

EZBOX_PLT_DIR=.
EZBOX_MUSL_DIR=../../musl-cross

if [ ! -e "$EZBOX_PLT_DIR"/config.sh ]; then
	printf "\nERROR: Not exist ${EZBOX_PLT_DIR}/config.sh \n"
	exit 1
fi

cp -af "$EZBOX_PLT_DIR"/config.sh "$EZBOX_MUSL_DIR"/config.sh

if [ -d "$EZBOX_PLT_DIR"/patches ]; then
	cp -af "$EZBOX_PLT_DIR"/patches/* "$EZBOX_MUSL_DIR"/patches/
fi

