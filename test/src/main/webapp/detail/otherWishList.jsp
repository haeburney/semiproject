<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>      
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/detailCss.css?after">

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="listBody">
<%@include file="/submain/nav.jsp" %>
<c:if test="${not empty wImgList}">
	<c:forEach var="li" items="${wImgList }" varStatus="status">
		<div id="w${li.id }">
			<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
				<img src="${li.poster_path }" style="width:200px">
			</a>	
			<div>${li.title }</div>
		</div>
	</c:forEach>	
</c:if>


</body>
</html>