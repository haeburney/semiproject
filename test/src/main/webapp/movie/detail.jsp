<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<style>
/* 메뉴바랑 화면이 겹쳐서 띄우는 body */
body {
	padding-top: 0px;
	background-color : black;
}

span {
	background-color: white;
}

.div {
	border: 1px solid rgb(0, 0, 0);
}

.div1 {
	margin: auto;
}

/* */
.container {
	flex-basis: 25%;
	flex: 0;
	margin: 8px;
	border: 1px solid rgb(0, 0, 0);
	padding: 8px;
	cursor:;
	box-sizing: border-box;
}

.player {
  outline: none;
  border: none;
  border-radius: 0.8rem
}


</style>
</head>
<%@include file="/submain/nav.jsp" %>

<body>


<!-- 동영상띄우는 코드  -->
<div class='player'>
<c:forEach var = "key" items ="${key}">
<iframe width ="100%" height = "500" src="https://www.youtube.com/embed/${key.video_path}?controls=0&rel=0&modestbranding=1&autoplay=1&loop=1&wmode=opaque&rel=0&disablekb=1&cc_load_policy=1" 
frameborder="0" framespacing="0" marginheight="0" marginwidth="0" scrolling="no" vspace="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen>
</iframe>
</c:forEach>
</div>


<div class="container">
<h3>코멘트창</h3>
</div>

<div class="container">
<span>기본정보</span>
<span>공석</span>
<span>코멘트목록</span>
</div>


</body>
</html>