<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<<<<<<< HEAD
<link rel="stylesheet" href="/submain/reset.css">

<style>
=======

<link rel="stylesheet" href="/submain/reset.css">
<link rel="stylesheet" href="/submain/navcss.css">
<title>인기순</title>
<style>

/*.card-text {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	
}

.card img{
	height: 26rem;
	object-fit: cover;
}*/

.list {
	margin-left: auto;
	margin-right: auto;
	max-width: 1200px;
}

>>>>>>> origin/sonhw
.layout{
  width: 1800px;
  height: 100vh;
  margin: auto;
}
.poster{
  width: 300px;
  height: 450px;
  margin: auto;
}
.layout_row{
  width: 1700px;
  margin: auto;
  height: 556.22px;
  display: flex;
  flex-wrap: wrap;
  justify-content: space-between; /* 이미지 사이 간격 유지 */
}
.movie_wrapper{
  display: flex;
  flex-direction: column;
}
.movie_info{
  float: left;
  margin-right: 30px;
}
.more{
width: 120px;
padding: 8px 15px;
margin: 10px auto;
}

<<<<<<< HEAD
 .container{ 
             flex-basis:  25%; 
             flex : 0; 
             margin: 8px; 
             border:1px solid rgb(252, 252, 252); 
             padding: 8px; 
             cursor: pointer; 
             box-sizing: border-box; 
         } 
/* .container :hover { 
 			background:rgba(0,0,0,0.8);  
 			backdrop-filter: blur(5px);} 
 }*/ 
</style>

<title>서브메인(인기순)</title>
=======
h2{
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
	color: white;
	background-color: black;
	font-family: 'KOTRA_BOLD-Bold';
}

.text{
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
	color: white;
	text-align: center;
	font-family: 'KOTRA_BOLD-Bold';
	font-size : 15px;
}

.col{
	margin: auto;
}

.title{
	margin-left:160px;
}

.bgcolor{
	background-color:black;
}

/* 버튼양식 */
.floating-leftbtn{
	position: fixed;
	bottom: 20px;
	left: 20px;
	background-color: #fff0ab;
	color: black;
	border-radius: 50%;
	font-size: 15px;
	padding: 20px;
	border: none;
	cursor: pointer;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
}

.floating-rightbtn{
	position: fixed;
	bottom: 20px;
	right: 20px;
	background-color: #fff0ab;
	color: black;
	border-radius: 50%;
	font-size: 15px;
	padding: 20px;
	border: none;
	cursor: pointer;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
}

.floating-btn:hover {
  background-color: #555;
}

.floating-rightbtn{
background-image: (
url("data:image/svg+xml,%3csvg xmlns='http://www.w3.org/2000/svg' viewBox='0 0 16 16' fill='%23fff'%3e%3cpath d='M4.646 1.646a.5.5 0 0 1 .708 0l6 6a.5.5 0 0 1 0 .708l-6 6a.5.5 0 0 1-.708-.708L10.293 8 4.646 2.354a.5.5 0 0 1 0-.708z'/%3e%3c/svg%3e");
}
</style>

<!-- 다음페이지
<script type="text/javascript">
let num = 1;
function next(){
	num++;
	//비동기요청 객체 생성
	xhttp = new XMLHttpRequest();
	
	//비동기 요청 응답이 왔을때 자동 실행될 핸들러 등록
	xhttp.onload = function(){
		let val = xhttp.responseText;
		let arr = JSON.parse(val);
		let html = '';
		for(let obj of arr){
			html += obj.content+"(writer:"+obj.writer+")<br/>" //댓글내용과 작성자누구인가
		}
		let div = document.getElementById("r_"+num);
		div.innerHTML = html;
	}
	
	//작성값(?) 요청전송에 보낼 param(작성값(?))
	alert(num);
	let param = "?next=" + num;
	
	//요청 전송방식, 서버페이지 url 설정. get방식인 경우 url뒤에 파라메타 붙임
	xhttp.open("GET", "${pageContext.request.contextPath}/submain/nextpopuler.do" + param);
	
	//요청보냄
	xhttp.send();
}
</script> -->

>>>>>>> origin/sonhw
</head>
<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

<<<<<<< HEAD
<p>인기순</p>
<div class="layout_row">
<c:forEach var="vo" items="${movielist }">
<div class="container">
	<div class="movie_wrapper">
	<a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
	<img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="poster">
	</a>
	<div class="movie_info">
	<h4>${vo.title }</h4>
	</div>
	</div>		
	</div>
</c:forEach>
</div>

<c:if test="not empty">
	${sessionScope.userId}
</c:if>

<!-- 로그인/회원가입 페이지창 -->
<c:if test="${not empty view}">
	<jsp:include page="${view }"/>
</c:if>
=======
<div class="bgcolor">
<div class="title">
<h2>인기순</h2>
</div>
</div>

<div class="layout">
<div class="list">
<div class="row row-cols-md-2 row-cols-lg-4 g-4">
  <c:forEach var="vo" items="${movielist }">
    <div class="col">
        <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
          <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="card-img-top" alt="인기순">
        </a>
          <div class="text">${vo.title }</div>
       </div>
  </c:forEach>
</div>
</div>
</div>
<a href="${pageContext.request.contextPath}/submain/populer.do?num=${prev}"><input type="button" id="floatingBtn1" class="floating-leftbtn" value="이전페이지"></a>
<a href="${pageContext.request.contextPath}/submain/populer.do?num=${next}"><input type="button" id="floatingBtn2" class="floating-rightbtn" value="다음페이지"></a>
>>>>>>> origin/sonhw

</body>
</html>