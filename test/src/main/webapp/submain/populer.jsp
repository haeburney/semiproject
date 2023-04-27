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

<style>

.card-text {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	
}

.card img{
	height: 26rem;
	object-fit: cover;
}

.list {
	margin-left: auto;
	margin-right: auto;
	max-width: 1200px;
}

.layout{
	background-color: black;
}

h2{
	color: pink;
	background-color: black;
}
</style>

<!-- 다음페이지 -->
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
</script>
</head>
<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>


<h2>인기순</h2>

<div class ="text-overflow">
<div class="layout">
<div class="list">
<div class="row row-cols-md-2 row-cols-lg-4 g-4">
  <c:forEach var="vo" items="${movielist }">
    <div class="col">
      <div class="card">
        <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
          <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="card-img-top" alt="개봉예정작">
        </a>
        <div class="card-body">
          <p class="card-text">${vo.title }</p>
        </div>
      </div>
    </div>
  </c:forEach>
</div>
</div>
</div>
</div>

<a href="${pageContext.request.contextPath}/submain/nextpopuler.do?next="+2><input type="button" value="다음페이지"></a>


</body>
</html>