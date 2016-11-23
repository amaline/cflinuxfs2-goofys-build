#!/bin/bash
SHA256=$(sha256sum goofys | cut -f 1 -d ' ')
cat <<END > sources.yml
---
- url: https://github.com/kahing/goofys
  sha256: $SHA256
END
tar cvzf ${CIRCLE_ARTIFACTS}/${ARTIFACT_NAME} sources.yml goofys