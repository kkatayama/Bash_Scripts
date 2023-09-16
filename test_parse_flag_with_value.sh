#!/usr/bin/env 11;rgb:1d2d/36b0/455bbash
#
# Dummy command to test parsing command line "flags: (-h, -p)" and "values: (project)".
#

PROJECT=false

function usage() {
    echo "Usage: $0 [-h] [-p project]"
    echo " -h help"
    echo " -p {project name}"
}

while getopts hp: args
do case "$args" in
       (p)
          PROJECT="$OPTARG";;
       (h)
          usage
          exit 1;;
       (*)
          usage
          exit 1;;
   esac
done

if [[ $PROJECT == false ]]; then
    usage
    exit 1;
fi

PROJECT_HOME=${HOME}/Documents/${PROJECT}
echo ""
echo "Launching project '${PROJECT}' from: \"${PROJECT_HOME}\""


###############################################################################
#                               Sample Test Runs                              #
###############################################################################
: <<'END'


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




END
