#! /bin/bash

clear
echo "
-------------------------------------------------------------------------------------------
#3. Docker Image는 Hub Repository를 통해 공유될 수 있어요. 

     - 공식 Hub Repo : https://hub.docker.com
     - 사내 Hub Repo : http://hub.docker.9rum.cc/search/repos - 이렇게 카카오처럼 개인적인 Docker Hub를 만들 수 있음.

"
read

echo "press enter for docker hub #1"
read
open https://hub.docker.com

clear
echo "
-------------------------------------------------------------------------------------------
#4. Docker Image는 2가지 방법으로 만들어낼 수 있는데...
"
read

echo "
#4-1 : docker commit 
    a. docker pull ubuntu:latest     # docker base image를 받음 
    b. docker run ...                # image -------> container
    c. /bin/bash ...                 # make some changes in the [container]
    d. docker commit ...             # container ---> image
"
read

echo "
#4-2 : Dockerfile
    a. vi Dockerfile                 # 'Dockerfile'을 작성한다
    b. docker build ...              # dockerfile --> image  

"
read

clear
echo "
-------------------------------------------------------------------------------------------
#5. 만들어진 Docker Image를 Real Server에 배포한다.

#5-1. 기본적인 방법.
   a. 여러 대의 물리 서버에 docker service를 설치 및 구동하고
   b. 여러 대의 물리 서버에 docker image를 복사하고
   c. 적절히 실행한다. 

#5-2. git hook을 이용한 방법
   - #5-1과 동일하나 dockerfile 작성 후 git hook으로부터 docker image가 자동 생성되게 설계한다.

#5-3. mesos + marathon 등의 framework를 사용하기
   - Sneak peek : Let's look at it! 
   - dkos(카카오 내의 프레임워크) : http://dkos.9rum.cc/
   - 간단히 살펴보자.
   - AWS 등에서도 제공하는 다양한 프레임워크가 있음.
"
read

open http://dkos.9rum.cc/
