#!/bin/bash
# #9: Unset TNS_ADMIN as causing issue if defined but has no value
if [ -z "$TNS_ADMIN" ]; then       
  echo "warning: \$TNS_ADMIN is empty, unsetting it"
  unset TNS_ADMIN
else
  echo "TNS_ADMIN: $TNS_ADMIN"
fi

# 1: Allow for other (non-sqlplus) commands to be run
# If not provided sqlplus will be default

# Command to run
if [ -z "$RUN_COMMAND" ]; then
  RUN_COMMAND="sqlplus"
fi
echo "RUN_COMMAND:  $RUN_COMMAND"

# Call SQLcl with all the parameters used when calling sqlcl
$RUN_COMMAND "$@"