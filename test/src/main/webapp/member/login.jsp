<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginJoinCss.css">
<script type="text/javascript">
	$(document).ready(function(){
		$('#close').click(function(){
			$('#pop').hide();
		});
	});
	
</script>

</head>
<center>
<body>
	<div id="pop">
		<div id="a"><img src="/test/image/logo4.png" width="90"></div>
		${msg }
		<form action="${pageContext.request.contextPath }/member/login.do" method="post">
			<div><input id="b" type="text" name="userId" placeholder="아이디"></div>
			<div><input id="c" type="password" name="password" placeholder="비밀번호"></div>
			<div>
				<span id="d">
					<a href="${pageContext.request.contextPath }/member/main/page.do"><input type="submit" class="button" value="로그인"></a>
				</span>
				<span id="e"><input type="button" class="button" value="회원가입" onclick="joinDo()"></span>
			</div>
		</form>
		<img src="../image/close.png" style="width:30px" onclick="closeX()">
	</div>
</body>
</center>
</html>