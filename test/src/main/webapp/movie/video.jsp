<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style> 

.player {
	outline: none;
	border: none;
	border-radius: 0.8rem
}

</style>


</head>
<body>

	<div class='player'>

		<c:if test="${not empty key}">
		
			<iframe  src="https://www.youtube.com/embed/${key}?controls=0&rel=0&modestbranding=1&autoplay=1&loop=1&wmode=opaque&rel=0&disablekb=1&cc_load_policy=1"
				frameborder="0" framespacing="0" marginheight="0" marginwidth="0"
				scrolling="no" vspace="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen> </iframe>
		</c:if>
		
<div class="poster">
			<c:if test="${empty key}">
			<img src="https://image.tmdb.org/t/p/original${img_path }"  style="padding-left:20px">
		</c:if>
</div>
	</div>


</body>
</html>