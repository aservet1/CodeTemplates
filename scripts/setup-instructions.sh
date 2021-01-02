#!/bin/bash
echo 'copy the lines below into $HOME/.profile to set the CODETEMPL_ROOT environment variable and add it to PATH '
echo
echo '# setup for codetempl'
echo "export CODETEMPL_ROOT=$(pwd)"
echo 'export PATH=$PATH:$CODETEMPL_ROOT'
