#!/bin/bash

CREDENTIALS_FILE=/var/lib/duplicity/credentials/credentials.conf && \
  test -f $CREDENTIALS_FILE && \
  source $CREDENTIALS_FILE && \
  export AWS_ACCESS_KEY_ID && \
  export AWS_SECRET_ACCESS_KEY

gpg --import /var/lib/duplicity/gpg/*.gpg

duplicity $@
