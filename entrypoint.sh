#!/bin/bash
set -e

PHP_FULL_VERSION=$(php -r 'echo phpversion();')

if [ -z "$(ls)" ]; then
  echo "No code have been found.  Did you checkout with «actions/checkout» ?"
  exit 1
fi

echo "## Installing dependencies"
apt update
apt upgrade -yq
apt -yq install git zip unzip

#!/bin/bash
set -e

phplint ./