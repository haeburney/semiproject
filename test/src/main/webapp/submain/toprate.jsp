<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서브메인(평점순)</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

<script>

.poster{
	  width: 300px;
	  height: 450px;
	  margin-right: 20px;
	  margin-bottom: 20px;
	}
	
</script>
</head>
<%@include file="/submain/nav.jsp" %>
<body>

<p>평점순</p>

<div class ="row">
<c:forEach var="vo" items="${topratelist }">
<div class ="col">
<a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
<img src="https://image.tmdb.org/t/p/w500${vo.poster_path}" class="poster">
</a>
<h4>${vo.title }</h4>
</div>
</c:forEach>
</div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous">
    </script>
</body>
</html>