<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">

    <link rel="stylesheet" href="detailcss.css"> 


<style>
/* 메뉴바랑 화면이 겹쳐서 띄우는 body */


</style>
</head>
<%@include file="/submain/nav.jsp"%>

<body>

	<!-- 동영상띄우는 코드  -->
	
	<div class='player'>
		<c:forEach var="key" items="${key}">
			<iframe width="100%" height="500"
				src="https://www.youtube.com/embed/${key.video_path}?controls=0&rel=0&modestbranding=1&autoplay=1&loop=1&wmode=opaque&rel=0&disablekb=1&cc_load_policy=1"
				frameborder="0" framespacing="0" marginheight="0" marginwidth="0"
				scrolling="no" vspace="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen> </iframe>
		</c:forEach>
	</div>


<div class="container"> 
        <span class="item item1"> 기본정보 </span> 
        
		
		<span class="item item2">별 
	
		</span> 
			
		
		
		
		
		
		
		<span class=" item item3"> 하트</span> 
		<span class="item item4"> 우리평점 </span>
		<span class="item item5">남의평점 </span> 
		<span class=" item item6"> 댓글달기</span> 
		<span class="item item7"> 남의 댓글 보기 </span>
</div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</body>
</html>