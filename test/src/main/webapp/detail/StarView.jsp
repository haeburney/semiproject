<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@include file="/submain/nav.jsp" %>
<c:if test="${not empty sList}">
	<c:forEach var="li" items="${sList }" varStatus="status">
		<div id="w${li.movieNum }">
			<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.movieNum }">
				<img src="${sImgList[status.index].poster_path }" style="width:200px">
			</a>	
		
			${sImgList[status.index].title }
			${li.star }
		<br/>
		</div>
	</c:forEach>	
</c:if>
</body>
</html>