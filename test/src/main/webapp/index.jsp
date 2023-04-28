<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- 파비콘 -->
<link rel="shortcut icon" href="${pageContext.request.contextPath }/image/favicon-32x32.png">

</head>
<body>
	<h3>디테일페이지</h3>
	<a href="${pageContext.request.contextPath }/main/page.jsp">찐메인페이지</a><br/>
	<a href="${pageContext.request.contextPath }/main/page.do">메인페이지</a><br/>
	<a href="${pageContext.request.contextPath }/moive/detail.do">영화 디테일</a><br/>
	<a href="${pageContext.request.contextPath }/member/mypage.do">마이페이지</a><br/>
	<a href="${pageContext.request.contextPath }/comments/write.do">로그인</a><br/>
	<a href="${pageContext.request.contextPath }/submain/populer.do?num=1">서브메인(인기순)</a><br/>
	<a href="${pageContext.request.contextPath }/submain/toprate.do">서브메인(평점순)</a><br/>
	<a href="${pageContext.request.contextPath }/submain/upcoming.do">서브메인(개봉예정작)</a><br/>
	<a href="${pageContext.request.contextPath }/comments/write.do">코멘트</a><br/>
	


</body>
</html>