<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">

	#a {
		margin-botton : 15px;
	}
	#b {
		margin-bottom : 10px;	
	}
	
	#c {
		margin-bottom : 20px;
	}
	
	#d {
		margin-right : 30px;
	}
</style>
</head>
<center>
<body>
	<div id="a"><img src="/test/image/logo4.jpg" width="90"></div>
${msg }
	<form action="${pageContext.request.contextPath }/member/login.do" method="post">
	<div id="b"><input type="text" name="userId" placeholder="아이디"></div>
	<div id="c"><input type="password" name="password" placeholder="비밀번호"></div>
	<div>
	<span id="d"><input type="submit" value="로그인"></span>
	<span><input type="button" value="회원가입" onclick="location.href='${pageContext.request.contextPath }/member/join.do'"></span>
	</div>
	</form>
	</table>
</body>
</center>
</html>