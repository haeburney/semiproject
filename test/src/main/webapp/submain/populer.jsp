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

<style>
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
</head>
<body>
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

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

</body>
</html>