<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<style>
#pwd, #nickName{
	outline: 0;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 3px solid black;
	width: 150px;
	height: 24px;
	background-color: #3d3d3d;
	color: white;
	margin-bottom:10px;
}

#box{
	top : 50%;
}
</style>
</head>
<body>
		<div id="box">
			<h2>정보 수정</h2>

 			<form action="${pageContext.request.contextPath }/member/edit.do?userId=${sessionScope.userId}" method="post">
				<div>
					비밀번호 수정 <input id="pwd" name="pwd" placeholder="${vo.userId }">
				</div>
				<div>
					닉네임 수정 &nbsp; <input id="nickName" name="nickname" placeholder="${vo.nickname }">
				</div>
				<input type="submit" value="수정하기">
				<input type="button" value="취소하기" onclick="">
			</form>
		</div>

	
	<a id="out" href="${pageContext.request.contextPath }/member/out.do?userId=${sessionScope.userId}">탈퇴하기</a>

</body>
</html>