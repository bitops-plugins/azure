#!/bin/bash
set -e

echo "Running Azure Plugin deployment script..."

# vars
export BITOPS_SCHEMA_ENV_FILE="$BITOPS_OPSREPO_ENVIRONMENT_DIR/ENV_FILE"

if [ ! -d "$BITOPS_OPSREPO_ENVIRONMENT_DIR" ]; then
  echo "No azure plugin directory. Skipping."
  exit 0
fi

echo "Deploying azure plugin..."

if [ ! -f "$BITOPS_SCHEMA_ENV_FILE" ]; then 
  echo "No azure plugin ENV file found"
else
  source "$BITOPS_SCHEMA_ENV_FILE"
fi

cd $BITOPS_OPSREPO_ENVIRONMENT_DIR

echo "Listing contents of azure plugin Root: $BITOPS_OPSREPO_ENVIRONMENT_DIR"
ls -al .


echo "Running the plugin CLI: (SKIPPED)"

echo "Options:"
echo "AZURE_FOO: $AZURE_FOO"
echo "AZURE_BAR: $AZURE_BAR"

# here is the image using the installed azure cli
az version