<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<title>서브메인(개봉예정작)</title>
<style>
.poster{
	weith: 300px;
	height: 450px;
}
.col-poster{
    width: 25%;
    padding: 10px;
}
</style>
</head>
<body>
<p>개봉예정작</p>

<div class="container">
  <div class="row">
  <c:forEach var="vo" items="${upcominglist }">
    <div class="col-lg-3 col-md-6 col-poster">
    <div class="col">
    <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
	<img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="poster">
	</a>
	<h4>${vo.title }</h4>
	</div>
  </div>
  </c:forEach>
</div>
</div>
</body>
</html>