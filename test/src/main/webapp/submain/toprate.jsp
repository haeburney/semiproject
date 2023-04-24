<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>서브메인(평점순)</title>
</head>
<body>
<p>평점순</p>
<c:forEach var="vo" items="${topratelist }">
<a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
<img src="https://image.tmdb.org/t/p/w500${vo.poster_path}">
</a>
<h4>${vo.title }</h4>
</c:forEach>
</body>
</html>