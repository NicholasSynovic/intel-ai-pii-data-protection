#!/bin/bash

# Copyright (C) 2022 Intel Corporation
# SPDX-License-Identifier: BSD-3-Clause

# Edits made by Nicholas Synovic to
# https://github.com/oneapi-src/disease-prediction/blob/main/setupenv.sh

# Technology distributions
PKG_ELEMENTS=${#PKG_ARRAY[@]}

function success {
echo "Environment $ENV_NAME created"
echo "Activate:"
echo -e "       \$ conda activate $ENV_NAME"
exit 0
}

function failed {
echo "Environment $ENV_NAME creation failed "
exit 1
}

ENV_NAME="intel_ai_pii_data_protection"
echo Creating conda environment $ENV_NAME...
echo Setting up environment with packages : $PACKAGE...

conda env create -n $ENV_NAME -f env/intel/pii-intel.yml
if [[ $? -ne 0 ]] ; then
failed
else
success
fi
