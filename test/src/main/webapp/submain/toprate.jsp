<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
<title>평점순</title>
<style>

.card {
  border: none;
}

.card-text {
	white-space: nowrap;
	overflow: hidden;
	text-overflow: ellipsis;
	color: white;
	text-align: center;
}

.card-body{
	background-color: black;
}

.card img{
	height: 26rem;
	object-fit: cover;
}

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
	color: pink;
	background-color: black;
}
</style>
</head>
<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>


<h2>평점순</h2>

<div class="layout">
<div class="list">
<div class="row row-cols-md-2 row-cols-lg-4 g-4">
  <c:forEach var="vo" items="${topratelist }">
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
</div></body>
</html>