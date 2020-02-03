#!/usr/bin/env bash

. scripts/common.sh

echo -e "${RS}${BLUE} Linting and checking...${RS}"
scripts/lint.sh
RET=$?

echo -e "${RS}${BLUE} Packaging charts... ${RS}"
helm package .
RET=$?

if [[ "${RET}" == 0 ]]; then
    helm repo index .

    echo -e "${BLUE} Now commit and push charts and docs! ${RS}"
else
    echo -e "${RED}Tests failed, charts not packaged! ${RS}"
fi
