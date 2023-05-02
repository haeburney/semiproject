<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<link rel="stylesheet" href="/submain/reset.css">
<link rel="stylesheet" href="/submain/navcss.css">
<title>인기순</title>
<style>

/*.card-text {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	
}*/


.list {
	margin-left: auto;
	margin-right: auto;
	max-width: 1200px;
}

h2{
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
	color: white;
	background-color: #212121;
	font-family: 'KOTRA_BOLD-Bold';
}

.text{
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
	color: white;
	text-align: center;
	font-family: 'KOTRA_BOLD-Bold';
	font-size : 15px;
	overflow: hidden;
    white-space: nowrap;
	text-overflow: ellipsis;
}

.col{
	margin: auto;
}


/* 버튼양식 */
.floating-leftbtn{
	position: fixed;
	bottom: 250px;
	left: 20px;
	color: black;
	font-size: 15px;
	padding: 20px;
	border: none;
	cursor: pointer;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
}

.floating-rightbtn{
	position: fixed;
	bottom: 250px;
	right: 20px;
	color: black;
	font-size: 15px;
	padding: 20px;
	border: none;
	cursor: pointer;
	box-shadow: 0px 4px 8px rgba(0, 0, 0, 0.2);
}

.floating-btn:hover {
  background-color: #555;
}

/*.floating-rightbtn{
background-image: (

}*/

.not_s{
margin-top: 12px;
margin-left: 10px;
color: #d3d3d3;
}

.title__l{
	color: white;
	float:left;
	cursor:pointer;
}

.title__l.active{
	font-size: 20px;
}

.img{
	width: 273px;
	height: 26rem;
	object-fit: cover;
	transition: all 0.2s linear;
	border-radius: 10px;
}

.img:hover{
	transform: scale(1.03); /* 1.1 변경하면 글씨 가려짐 */
}

.layout{
	background-color: #212121;
}

.bgcolor{
	background-color:#212121;
	padding-top: 40px;
	border-top: 2px solid #dbdbdb;
}

.jpg_wrap{
	width: 273px !important;
	height: 416px;
	margin-bottom: 10px;
	position: relative;
}

.title{
	margin-left: 160px;
	height: 76px;
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

</head>
<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

<div class="bgcolor">
<div class="title">
<h2 class="title__l"><a href="${pageContext.request.contextPath }/submain/populer.do?num=1">인기순</a></h2>
<p class="title__l not_s"><a href="${pageContext.request.contextPath }/submain/toprate.do?num=1">평점순</a></p>
<p class="title__l not_s"><a href="${pageContext.request.contextPath }/submain/upcoming.do?num=1">개봉예정작</a></p>
</div>
</div>

<div class="layout">
<div class="list">
<div class="row row-cols-md-2 row-cols-lg-4 g-4">
  <c:forEach var="vo" items="${movielist }">
    <div class="col">
        <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
        <div class="jpg_wrap">
          <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="img" alt="인기순">
         </div>
        </a>
          <div class="text">${vo.title }</div>
       </div>
  </c:forEach>
</div>
</div>
</div>
<a href="${pageContext.request.contextPath}/submain/nextpopuler.do?num=${prev}">
<img src="${pageContext.request.contextPath}/image/left-arrow.png" id="floatingBtn1" class="floating-leftbtn" alt="이전페이지" style="width:100px; height: 100px;">
<!-- <input type="button" id="floatingBtn1" class="floating-leftbtn" value="이전페이지">--> </a>

<a href="${pageContext.request.contextPath}/submain/nextpopuler.do?num=${next}">
<img src="${pageContext.request.contextPath}/image/right-arrow.png" id="floatingBtn2" class="floating-rightbtn" alt="다음페이지" style="width:100px; height: 100px;">
<!-- <input type="button" id="floatingBtn2" class="floating-rightbtn" value="다음페이지"> --> </a>


<!-- title 글씨 크기 (다른거 누를때 마다 포스터가 옆으로 밀림)
<script>
function enlarge(element) {
	  resetAll();
	  element.classList.add("active");
	}

	function reset(element) {
	  element.classList.remove("active");
	}

	function resetAll() {
	  var elements = document.getElementsByClassName("title__l");
	  for (var i = 0; i < elements.length; i++) {
	    elements[i].classList.remove("active");
	  }
	}
</script>-->

</body>
</html>