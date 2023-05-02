<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myListCss.css?after">
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/detailCss.css?after">
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body id="listBody">
<%@include file="/submain/nav.jsp" %>
<c:if test="${not empty cList}">
	<c:forEach var="li" items="${cList }" varStatus="status">
		<div id="w${li.movieNum }">
			<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.movieNum }">
				<img src="${cImgList[status.index].poster_path }" style="width:200px">
			</a>	
			
			<div>코멘트 :${li.comments }</div>
			<div>${li.w_Date }</div>
			<div>${li.rate }</div>
		</div>
	</c:forEach>	
</c:if>
</body>
</html>