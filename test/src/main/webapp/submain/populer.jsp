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

</body>
</html>