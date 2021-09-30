#!/bin/bash
#set -e
##################################################################################################################
# Author 	: 	Erik Dubois
# Website	:	https://www.arcolinuxforum.com
##################################################################################################################
#
#   DO NOT JUST RUN THIS. EXAMINE AND JUDGE. RUN AT YOUR OWN RISK.
#
##################################################################################################################

# checking if I have the latest files from github
echo "Checking for newer files online first"
git pull

# Below command will backup everything inside the project folder
git add .

TIMESTAMP=`date "+%Y%m%d-%H%M%S"`
COMMENT="Update archive for Impish at $TIMESTAMP"

# Give a comment to the commit if you want
echo "####################################"
echo "Default commit comment is \""$COMMENT"\""
echo "Type [yes/y] to accept it. Or"
echo "Write your commit comment!"
echo "####################################"

read INPUT
if [ "$INPUT" = "Yes" ] || [ "$INPUT" = "yes" ] || [ "$INPUT" = "Y" ] || [ "$INPUT" = "y" ]; then
	# Committing to the local repository with default commit text
	git commit -m "$COMMENT"
else
	# Committing to the local repository with a message containing the commit text
	COMMENT=$INPUT
	git commit -m "$COMMENT"
fi

# Push the local files to github

git push -u origin impish

echo "################################################################"
echo "###################    Git Push Done      ######################"
echo "################################################################"
