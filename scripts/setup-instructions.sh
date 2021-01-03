#!/bin/bash

# make sure you run this in the directory that you would like to officially export the name to $CODETEMPL_ROOT.
# it will be inaccurate if you run it from any other directory

echo 'copy the lines below into $HOME/.profile to set the CODETEMPL_ROOT environment variable and add it to PATH '
echo
echo '# setup for codetempl'
echo "export CODETEMPL_ROOT=$(pwd)"
echo 'export PATH=$PATH:$CODETEMPL_ROOT'
