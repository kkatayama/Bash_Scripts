#!/usr/bin/env bash

VARIABLE_WITH_STUFF="Things about stuff!"

VARIABLE_WITOUT_STUFF=""


###############################################################################
#     This should print "variable contains stuff" for $VARIABLE_WITH_STUFF    #
###############################################################################
if [[ (( $VARIABLE_WITH_STUFF )) ]]
then
    echo "this variable contains stuff: \$VARIABLE_WITH_STUFF: \"${VARIABLE_WITH_STUFF}\""
else
    echo "this variable is empty: \$VARIABLE_WITH_STUFF: \"${VARIABLE_WITH_STUFF}\""
fi

###############################################################################
#     This should print "variable is empty" for $VARIABLE_WITHOUT_STUFF    #
###############################################################################
if [[ (( $VARIABLE_WITOUT_STUFF )) ]]
then
    echo "this variable contains stuff: \$VARIABLE_WITHOUT_STUFF: \"${VARIABLE_WITHOUT_STUFF}\""
else
    echo "this variable is empty: \$VARIABLE_WITHOUT_STUFF: \"${VARIABLE_WITHOUT_STUFF}\""
fi


### COMMAND ###
# ./test_if_varibale_contains_a_value.zsh

### OUTPUTS ###
# this variable contains stuff: $VARIABLE_WITH_STUFF: "Things about stuff!"
# this variable is empty: $VARIABLE_WITHOUT_STUFF: ""
