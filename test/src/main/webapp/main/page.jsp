<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
<title>메인페이지</title>
<style>
body{
padding-top:80px;
}

/* 캐러셀 안 img 크기 */
.carousel-item img{ 
 	width: 1000px;
	height: 500px;
	object-fit: contain;
	margin: auto;	
}

/* 캐러셀 틀 크기 */
@media (min-width: 1500px){
	.carousel-item img{
	width: 1200px;
	hegith: 500px;	
	}
}

/* 캐러셀 배경색 */
/* 좌/우 버튼색상을 변경하고 싶었으나, 이미지 파일이라 색상변경이 안되네요*/
.carousel-inner{
	background: black;
}

</style>

</head>
<body>
<!-- 메뉴 상당바 출력 -->
<h6>메인페이지입니다.</h6>

<!-- 캐러셀 -->
<!--  ${status.index == 0 ? 'active' : ''}: 첫 번째 이미지에 대해서는 자동 슬라이드가 시작되도록 하는 역할 -->
<div id="carouselExampleInterval" class="carousel slide" data-bs-ride="carousel">
  <div class="carousel-inner">
  <c:forEach var="vo" items="${populerlist }" varStatus="status">
    <div class="carousel-item ${status.index == 0 ? 'active' : ''}" data-bs-interval="10000">
      <a href="${pageContext.request.contextPath }/submain/populer.do?id=${vo.id }">
      <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="d-block w-100" alt="${vo.title}">
      </a>
    </div>
    </c:forEach>
  </div>
  
  <!--   좌/우 버튼에 대한 코드로 추정됨 -->
  <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="prev">
    <span class="carousel-control-prev-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Previous</span>
  </button>
  <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleInterval" data-bs-slide="next">
    <span class="carousel-control-next-icon" aria-hidden="true"></span>
    <span class="visually-hidden">Next</span>
  </button>
</div>

</body>
</html>