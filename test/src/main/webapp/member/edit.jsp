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
	body{
		background-color:black;
		color:white;
	}

	form{
		text-align : center;
	}
	h2{
		text-align : center;
	}
	#out{
		float : right;
	}
	#box{
		border : solid 1px black;
		border-radius : 5px;
		padding-bottom:10px;
	}

/* .overlay { */
/*   position: fixed; */
/*   top: 0; */
/*   left: 0; */
/*   z-index: 2; */
/*   width: 100%; */
/*   height: 100%; */
/*   background: rgba(0, 0, 0, .7); */
/*   opacity: 0; */
/*   visibility: hidden; */
/*   transition: .3s linear; */
/* } */
/* .overlay.is-open { */
/*   opacity: 1; */
/*   visibility: visible; */
/* } */

</style>
<script>


</script>
</head>
<body>
	<div class="overlay">
		<div id="box">
			<h2>정보 수정</h2>

<%-- 	<form action="${pageContext.request.contextPath }/member/edit.do?userId=${sessionScope.userId}" method="post"> --%>
			<form action="${pageContext.request.contextPath }/member/edit.do" method="post">
				<div>
					id 수정 <input name="userId" placeholder="${vo.userId }">
				</div>
				<div>
					닉네임 수정 <input name="nickname" placeholder="${vo.nickname }">
				</div>
				<input type="submit" value="수정하기">
				<input type="button" value="취소하기" onclick="location.href='${pageContext.request.contextPath }/member/mypage.do?userId=${sessionScope.userId }'">
			</form>
		</div>

	
	<a id="out" href="${pageContext.request.contextPath }/member/out.do?${sessionScope.userId}">탈퇴하기</a>
	</div>

</body>
</html>