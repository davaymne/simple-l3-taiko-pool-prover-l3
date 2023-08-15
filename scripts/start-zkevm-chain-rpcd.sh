#!/bin/sh

set -eou pipefail

mkdir -p /data

if [ ! -f "/data/kzg_bn254_21.srs" ];then
    wget https://storage.googleapis.com/zkevm-circuits-keys/kzg_bn254_21.srs -P /data
fi

/prover_rpcd --bind 0.0.0.0:"$PROVER_PORT"
