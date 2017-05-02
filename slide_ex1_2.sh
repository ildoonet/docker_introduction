#! /bin/bash

clear
echo "
-------------------------------------------------------------------------------------------
#2. 처음 써보는 docker.
    (설치는 v2.0로 되어있다고 가정하고..)

    docker를 위한 terminal을 하나 열고 엔터!
"

echo "
-------------------------------------------------------------------------------------------
Docker에는 Image와 Container라는 개념이 있어요.
     Image : 바이너리 실행파일
     Container : 프로세스

Docker를 이용한 첫 명령어.
     docker images
     docker ps -a
     docker pull ubuntu:latest

\" 공개된 Ubuntu [Image]를 이용해서 우분투 [Container]을 하나 만들어보자 \"

     docker run -i -t --rm ubuntu:latest /bin/bash
     # lsb_release -a
"
read

echo "
Point!
     - 이미지로 컨테이너를 실행해도 이미지는 안변했다. 용량도 그대로!
     - 이미지로 컨테이너를 실행하면 새로운 컨테이너가 생성된다.
"
read

echo "
-------------------------------------------------------------------------------------------
\" 우분투 환경에 Python Web Application이 동작하도록 설정해보자 \"

     docker run -i -t --name webapp ubuntu:latest /bin/bash
     # apt-get update
     # apt-get install build-essential python-dev zlib
     # apt-get install libjpeg-dev libpng-dev zlib1g-dev
     # apt-get install python python-pip"
read

echo "
-------------------------------------------------------------------------------------------
\" Git Repo의 파일들을 복사해서 웹앱을 실행해보자 \"

     docker exec webapp mkdir -p /kakao/alvolo-demo
     docker cp . webapp:/kakao/alvolo-demo
     docker start webapp
     docker attach webapp
     # cd /kakao/alvolo-demo; pip install -r requirements.txt
     # python dummy_api.py
"
read

echo "
-------------------------------------------------------------------------------------------
\" Container를 Image로 만들고 웹앱을 다시 실행해보자 \"

     docker commit -a \"Curtis Kim <curtis.kim@kakaocorp.com>\" -m \"init webapp\" webapp webapp:0.1
     docker history webapp:0.1
     docker run -i -t --rm webapp:0.1 /bin/bash
     docker run -i -t --rm --publish=8080:1258 --workdir=/kakao/alvolo-demo webapp:0.1 python dummy_api.py
"
read

echo "
Point!
     - Base Image로 생성한 [Container]에 변화를 주고, 이를 다시 새로운 Image로 만들었다.
       Base Image(Ubuntu 14.04) ----> Container : Ubuntu + Python ----> Image(webapp:0.1)
     - 새로운 이미지는 용량이 좀 늘었다. 그리고 Base Image에 더해져서 만들어진 형태이다.
     - 새로운 이미지는 외부 포트와 내부 포트를 연결해줌으로써(--public=8080:1258) 파이썬 웹앱을 실행할 수 있었고 성공적으로 동작했다. 
    
"
