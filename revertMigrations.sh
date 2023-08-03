#!/bin/bash
SUCCESS=`curl --insecure https://kvdb.io/BiNXxK1ux3UTi4YAqLVXmQ/migration_${CIRCLE_WORKFLOW_ID:0:7}`
if (( $SUCCESS == 1 ))
then
   cd ~/backend
   npm install
   npm run migrations:revert
fi
