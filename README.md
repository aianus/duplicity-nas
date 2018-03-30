# duplicity-nas

## Example command

```
version: '3'

services:
  duplicitynas:
    image: aianus/duplicity-nas:latest
    command:
      - "--volsize 50"
      - "--allow-source-mismatch"
      - "--s3-use-new-style"
      - "--file-prefix-archive=archive_"
      - "--s3-use-multiprocessing"
      - "--s3-multipart-chunk-size=10"
      - "--encrypt-key=8D062448"
      - "--archive-dir=/var/lib/duplicity/archive/"
      - "--gpg-options"
      - "--trust-model=always"
      - "--name=test"
      - "/var/lib/duplicity/source/"
      - "s3://s3.amazonaws.com/aianus-qnap-backup/"
    volumes:
      - /Container/container-station-data/application/duplicity:/var/lib/duplicity
      - /share/Software:/var/lib/duplicity/source:ro
```
