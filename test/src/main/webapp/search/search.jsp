<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 
<link rel="stylesheet" href="/submain/navcss.css">

<title>검색(인기순)</title>
<style>
.card{
margin:auto;
}

.poster{
width: 200px;
height: 300px;
}

</style>
</head>
<body>
<!-- 네비바 -->
<%@include file="/submain/nav.jsp" %>



<c:forEach var="vo" items="${searchlist }">
<div class="card mb-3" style="max-width:80%;">
  <div class="row g-0">
    <div class="col-md-4">
      <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
      <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="poster" alt="검색결과">
      </a>
    </div>
    
    <div class="col-md-8">
      <div class="card-body">
        <h5 class="card-title"><b>${vo.title }</b></h5>
        <p class="card-text"><small class="text-muted">${vo.release_date }</small></p>
        <p class="card-text">${vo.overview }</p>
      </div>
    </div>
  </div>
</div>
</c:forEach>
  
</body>
</html>