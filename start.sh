```
#!/bin/bash
#
repo_path=${1}
process="jekyll serve"
status=`ps aux|grep "${process}" | grep -v grep`

cd ~/${repo_path}

if [ ! -z "${status}" ]
then
        echo "Jekyll already running..."
        exit
else
        bundle exec jekyll serve
fi
```
