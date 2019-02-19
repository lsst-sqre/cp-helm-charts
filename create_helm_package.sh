#!/usr/bin/env bash
set -x
cd ..
tar -c --exclude=cp-helm-charts/.git/\* --exclude=cp-helm-charts/*.tgz -z -f cp-helm-charts/cp-helm-charts-0.1.1.tgz -v cp-helm-charts
cd -
