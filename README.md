# **조각별** 
영화추천 서비스
* * *
<br><br/>
![image](https://github.com/hennie-yun/semiproject/assets/129652734/c13bc245-1717-49e6-b15a-f71342278315)
<br><br/>
## 🔗 Link
- **Deploy site :** 배포사이트 업로드 미정

- **Github Repository :** 
https://github.com/hennie-yun/semiproject.git
  
- **Presentation :** pdf 파일 첨부예정
<br><br/>
## 📖 Summary
> ```Introduce Project```
>  - [💡 Motivation](#-motivation)
>  - [🧑🏻‍💻 Team Member](#-team-member) 
>  - [📌 Features](#-features)  
>  - [🛠 Stack](#-stack)
>  - [💿 Installation](#-installation)  
>  - [📸 Site Screenshot](#-site-screenshot)


#
* * *
#
# Introduce Project
조각별은 은 KOSTA 257기 세미 프로젝트로 진행 되었으며 
2023.04.19 ~ 2023.05.04 총 16일간 설계 및 개발하였으며, 5명의 팀원이 함께 하였습니다.
<br><br/>
## 💡 Motivation

COVID-19로 인해 영화관 방문자보다 집에서 영화를 감상하는 사람들의 비중이 증가했습니다. 이로 인해 작아진 영화 시장에서는 예전의 영화들이 회자되고 역주행하는 현상이 보여지고 있습니다. 조각별은 이러한 변화를 고려하여 영화 평점을 매기고 자유롭게 영화에 대해 이야기를 나눌 수 있는 사이트를 만들고자 했습니다. 

사이트 이름인 조각별은 '영화로 감성 한 부분을 조각하며 별로 남기다' 라는 의미입니다. 영화를 통해 겪어보지 못한 세상의 어느 한 부분을 기억하고 새기는 것이 조각별이 추구하는 방향입니다. 

<br><br/>
## 🧑🏻‍💻 Team Member
- 윤해현 : https://github.com/hennie-yun
- 박재연 : https://github.com/etoile0712
- 손행원 : https://github.com/sonbankclerk
- 송가영 : https://github.com/sgyoung96
- 김혜원 : https://github.com/haeburney

<br><br/>
## 📌 Features
- 별점 남기기 
- 찜하기
- 작품으로 검색 
- 장르별 검색
- 영화 감상평 남기기 
- 감상평 스포일러 방지 기능
- 팔로잉 기능
- 마이페이지 (별점, 찜한 목록으로 정렬하기) 
- 자신의 한줄 조각 남기기  
<br><br/>
## 🛠 Stack
### ✔️ Front-End
- jQuery v.1.12.4
- Bootstrap v5.3.0
- JavaScript

### ✔️ Back-End
- Java v17
- JSTL

### ✔️ DataBase
- Oracle v22.2.1

### ✔️ Server
- Apache Tomcat v9.0.43

### ✔️ Open API 
- TMDB API
- YouTube API
<br><br/>


## 💿 Installation

> #### ℹ️ Working with 조각별 (this project) in your IDE

### Steps:
#### ✔️ Prerequisites
아래의 항목들이 설치되어 있어야 합니다.
- Java 8 or newer
- git command line tool (https://help.github.com/articles/set-up-git)
- Oracle 10.5+
- Tomcat 9.0.43 or 9+
- Your prefered IDE


#### 1️⃣ 프로젝트 클론
~~~ 
git clone https://github.com/hennie-yun/semiproject
~~~
---
#### 2️⃣_Eclipse_ _에서   
clone 한 프로젝트를 import  

- File -> Import -> General -> Project from File System or Archive
---
#### 3️⃣ 기본 세팅프로그램
    경로 : src/main/webapp/WEB-INF/lib
   - cos.jar
   - json-simple-1.1.1jar
   - jstl-1.2.jar
   - ojdbc6.jar
   #
    경로 : src/main/java/conn/
   - DBConnect.java
   
---
#### 4️⃣ _Eclipse_ > Tomcat Configure 설정 후 > Run
<br><br/>

## 📸 Site Screenshot

**[회원가입]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/9b8005ac-28ad-48b3-962c-92d771a25071)
<br><br/>

**[로그인]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/1fc5c859-c111-4590-8a2d-3c656dcc374c)
<br><br/>

**[작품 제목으로 검색]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/5583438d-b04d-411c-baba-6f98ec748995)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/43477558-f349-4698-afec-467bfd0c4744)
<br><br/>

**[장르별로 검색]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/b8cb9346-86e7-4525-bcd2-ac53be8324af)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/ce14d018-5884-42ee-bc96-ef35f4321617)
<br><br/>

**[영화리스트]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/80626f87-38f8-459f-b407-59c3fbac59aa)
<br><br/>

**[영화 리스트 정렬]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/bb6e39c8-712d-4fdb-88c7-1473640ca74d)
<br><br/>

**[영화 디테일 페이지]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/af6dfad3-6992-4efe-a4db-ca414847e585)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/763c6319-996e-49a9-8a6f-b888eb6a8d42)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/7bc09e26-b4f7-4960-9238-2a77ede8fbe0)
<br><br/>

**[댓글 보러가기]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/243b3f4b-4007-46e1-a871-ca8301eea5ba)
<br><br/>

**[스포일러 기능]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/c5380df2-4fc4-4fed-8ca2-42c2ed59f30f)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/be805a13-b310-4a42-a9ca-8964964a2c0a)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/b98acfdb-34f8-4a00-a177-b10e2279d744)
<br><br/>

**[마이페이지]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/64793897-aa4c-4503-b2bd-7a5b25280293)
<br><br/>

**[Wish List]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/e0c06e11-f5a2-475c-9855-0fc6668b8d89)
<br><br/>

**[Star list]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/6691ffd6-9000-4a8c-a7e3-63de62826fef)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/fc3c7f56-4b36-4647-9620-2e1d656573bb)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/37f7fa1b-4fdf-4b3e-837c-818b1fa11b49)
![image](https://github.com/hennie-yun/semiproject/assets/129652734/400a125e-60bf-4c27-9ad3-9ab945e5a181)
<br><br/>

**[Comment List]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/3c081d1b-3acc-4441-8b5c-f1047bbb480f)
<br><br/>

**[Follow]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/f80a1857-3978-40d7-ad59-33fcc845fc1f)
<br><br/>

**[edit info]**
![image](https://github.com/hennie-yun/semiproject/assets/129652734/70b9e646-496a-49dd-bc45-80c5758f0a52)
<br><br/>

**-Fin-**

