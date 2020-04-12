#!/bin/sh
creds ansible-vault > /dev/null 2>&1 \
    && gpaste-client delete 0 \
    && xsel -b \
    && gpaste-client delete 0

