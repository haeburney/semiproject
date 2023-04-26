<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="http://code.jquery.com/jquery-latest.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('#close').click(function(){
			$('#pop').hide();
		});
	});
</script>
<style type="text/css">
	@font-face {
    	font-family: 'SUIT-Regular';
    	src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_suit@1.0/SUIT-Regular.woff2') format('woff2');
    	font-weight: normal;
    	font-style: normal;
	}
	
	body {
	 background-color : black;
	 color : white;
	}

	#a {
		margin-top : 45px;
	}
	
	#b, #c {
		outline : 0;
		border-top : none;
		border-left : none;
		border-right : none;
		border-bottom : 3px solid gray;
		width : 170px;
		height : 24px;
		background-color : black;
		color : white;
	}
	input::-webkit-input-placeholder{text-align:center}
	
	#b {
		margin-top : 25px;
		margin-bottom : 10px;	
	}
	
	#c {
		margin-bottom : 20px;
	}
	
	.button {
		font-family: 'SUIT-Regular';
		font-weight : 700;
		background : none;
		text-align : center;
		cursor : pointer;
		color : white;
		border : 0;
		outline : 0;
		top : 300px;
	}

	#pop {
 		width : 300px; 
 		height : 400px; 
 		margin-left : -100px;
 		margin-top : -150px;
 		left : 50%;
 		top : 50%;
		background : #3d3d3d;
		color : #fff;
 		position : absolute; 
 		text-align : center; 
		border-radius:10px;
/* 		display : flex;  화면 크기에 따라 크기가 달라지게 하는 것*/
	}
	
	#pop_background {
		position : fixed;
		width : 100%;
		height : 1000px;
		top : 0px;
		left : 0px;
		display : none;
		background-color : #000;
		opacity : 0.8;
	}
	
</style>
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
	<span id="e"><input type="button" class="button" value="회원가입" onclick="location.href='${pageContext.request.contextPath }/member/join.do'"></span>
	</div>
	</form>
	</table>
	</div>
</body>
</center>
</html>