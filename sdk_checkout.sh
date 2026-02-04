#!/bin/bash

WORKDIR="SDK10"
SDK_CONFIG_FILE="processor-sdk-scarthgap-chromium-10.01.10.04-config.txt"
git clone https://git.ti.com/git/arago-project/oe-layersetup.git ${WORKDIR} && cd ${WORKDIR}
./oe-layertool-setup.sh -f configs/processor-sdk/${SDK_CONFIG_FILE}
