#!/bin/bash
set -e

# When including a plugin in a BitOps install, this script will be called during docker build.
# It should be used to install any dependencies required to actually run your plugin.
# BitOps uses alpine linux as its base, so you'll want to use apk commands (Alpine Package Keeper)

echo "In the install script for the Azure plugin"

# steps from: https://github.com/Azure/azure-cli/issues/19591
apk update && apk upgrade
apk add py3-pip
apk add gcc musl-dev python3-dev libffi-dev openssl-dev cargo make
pip install --upgrade pip && pip install azure-cli
