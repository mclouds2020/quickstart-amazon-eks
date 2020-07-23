#!/bin/sh -ex
cd functions/source/
for d in * ; do
    n=$(echo $d| tr '[:upper:]' '[:lower:]')
    cd $d
    if [ -z "$ECR_BUILD_CACHE" ]; then
      docker build --cache-from ${ECR_BUILD_CACHE}:$n -t $n .
    else
      docker build -t $n .
    fi
    docker rm $n > /dev/null 2>&1 || true
    docker run -i --name $n $n
    mkdir -p ../../packages/$d/
    docker cp $n:/output/. ../../packages/$d/
    docker rm $n > /dev/null
    cd ../
  done
cd ../../
