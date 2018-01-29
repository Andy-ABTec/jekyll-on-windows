#! /bin/bash
#
repo_path=${1}
#
clear
pushd ~ >/dev/null
#
if [ "${repo_path}" = "" ] || [ ! -d "${repo_path}" ]
then
        echo -e "\n\tUsage: ${0} repo-name\n"
        echo -e "\n\tPlease supply the Repo name for the Gem update\n"
        exit
fi
#
cd ${1}
#
sudo apt-get update -y && sudo apt-get upgrade -y
#
echo
#
sudo bundle update