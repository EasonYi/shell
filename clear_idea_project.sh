#!/bin/bash
# Author: Eason Yi
# Date: 2017-06-15

echo "removing *.iml files..."
find . -name "*.iml" -exec rm {} \;

echo "removing .idea directory..."
rm -rf .idea
echo "current idea project is clear."
