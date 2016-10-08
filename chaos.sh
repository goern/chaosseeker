#!/bin/bash

set -ex

: ${DELAY:=45}
: ${NAMESPACE:=default}

while true; do
  kubectl \
    --namespace="${NAMESPACE}" \
    --server="${SERVER}" --insecure-skip-tls-verify=true \
    --token="${TOKEN}" \
    -o 'jsonpath={.items[*].metadata.name}' \
    get pods | \
      tr " " "\n" | \
      shuf | \
      head -n 1 |
      xargs -t --no-run-if-empty \
        kubectl --namespace="${NAMESPACE}" --server="${SERVER}" --insecure-skip-tls-verify=true --token="${TOKEN}" delete pod

  sleep "${DELAY}"
done
