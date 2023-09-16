#!/usr/local/bin/zsh
#
# Dummy command to test parsing command line "flags: (-h, -p)" and "values: (project)".
#

PROJECT=unknown

USAGE_MESSAGE="
Usage: $0 [-h] [-p project]
 -h help
 -p {project name}"

while getopts hp: args
do case "$args" in
       p) PROJECT="$OPTARG";;
       h) echo "${USAGE_MESSAGE}"
          exit 1;;
       :) echo "${USAGE_MESSAGE}"
          exit 1;;
       *) echo "${USAGE_MESSAGE}"
          exit 1;;
   esac
done

shift $(($OPTIND - 1))

PROJECT_HOME=${HOME}/Documents/${PROJECT}
echo ""
echo "Launching project '${PROJECT}' from: \"${PROJECT_HOME}\""


###############################################################################
#                               Sample Test Runs                              #
###############################################################################
: <<EOF'END'


### COMMAND ###

./test_parse_flag_with_value.zsh -h

### OUTPUTS ###

Usage: ./test_parse_flag_with_value.zsh [-h] [-p project]
 -h help
 -p {project name}



### COMMAND ###

 ./test_parse_flag_with_value.zsh -p "Test Project"

### OUTPUTS ###

Launching project 'Test Project' from: "/Users/katayama/Documents/Test Project"




EOF
