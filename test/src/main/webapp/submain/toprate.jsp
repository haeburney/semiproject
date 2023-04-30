<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<link rel="stylesheet" href="/submain/reset.css">
<link rel="stylesheet" href="/submain/navcss.css">
<title>평점순</title>
<style>

/*.card {
  border: 2px solid yellow;
}

.card-text {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: yellow;
	text-align: center;
}

.card-body{
	background-color: black;
}

.card img{
	height: 26rem;
	object-fit: cover;
}*/

.list {
	margin-left: auto;
	margin-right: auto;
	max-width: 1200px;
	max-height: 2500px;
}

.layout{
	background-color: black;
}

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
	margin-left:80px;
}

.bgcolor{
	background-color:black;
}

</style>
</head>

<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

<div class="bgcolor">
<div class="title">
<h2>평점순</h2>
</div>
</div>

<div class="layout">
<div class="list">
<div class="row row-cols-md-2 row-cols-lg-4 g-4">
  <c:forEach var="vo" items="${topratelist }">
    <div class="col">
        <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
          <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="card-img-top" alt="개봉예정작">
        </a>
          <p class="text">${vo.title }</p>
        </div>
  </c:forEach>
</div>
</div>
</div>
<a href="${pageContext.request.contextPath}/submain/nexttoprate.do?num=${prev}"><input type="button" value="이전페이지"></a>
<a href="${pageContext.request.contextPath}/submain/nexttoprate.do?num=${next}"><input type="button" value="다음페이지"></a>

</body>
</html>