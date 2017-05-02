#! /bin/bash

clear
echo "
시작하기 전에.

Alvolo Thumbnails Demo Page는 
     - 사람들이 알볼로 썸네일을 경험해볼 수 있는 웹 페이지
     - 개발자들이 참조할만한 api document 제공
     - 개발자들이 프로토타입하는 것을 돕는 api 제공

Example Scenario.
카페셀에서 프로토타입 버전을 적용하자, 
순간적으로 요청되는 양이 급증하는 현상이 발생했고 
<프로토타입을 이용하는 많은 곳에서 썸네일을 제공받지 못하거나 응답이 느려졌음>

Enter to See Logs
"
read
read

clear
echo "
-------------------------------------------------------------------------------------------
#1. Python Web Application을 개발하고
    Docker를 설정해본다"
read

echo "
-------------------------------------------------------------------------------------------
Alvolo Thumbnails 의 Demo web application?
open demo : http://alvolo.kakao.com/thumbnails/v1/demo"
read

open http://alvolo.kakao.com/thumbnails/v1/demo
read

echo "
-------------------------------------------------------------------------------------------
open github : https://github.daumkakao.com/Alvolo-v1/AlvoloThumbnailsDemo"
read

open http://github.daumkakao.com/Alvolo-v1/AlvoloThumbnailsDemo
read 

echo "
-------------------------------------------------------------------------------------------
repo를 clone해보자 : https://curtis.kim@github.daumkakao.com/Alvolo-v1/AlvoloThumbnailsDemo.git"

read

git clone https://curtis.kim@github.daumkakao.com/Alvolo-v1/AlvoloThumbnailsDemo.git

echo "
-------------------------------------------------------------------------------------------
Let's take a look at it!"
