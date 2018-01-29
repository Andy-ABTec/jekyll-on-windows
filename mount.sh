#!/bin/bash
#i
repo_path=${1}
testpath="${repo_path}/_config.yml"
#
clear pushd ~ >/dev/null
#
if [ "${repo_path}" = "" ]
then
        echo -e "\n\tUsage: ${0} repo-name\n"
        echo -e "\n\tPlease supply the Repo name for the mount command\n"
        exit
fi
#
if [ ! -f  "${testpath}" ]
then
        echo -e "\nMapping Path...\n"
        sudo mount --bind /mnt/c/Users/Andy/${repo_path} ${repo_path}
else
        echo -e "\nPath already Mapped...\n"
fi