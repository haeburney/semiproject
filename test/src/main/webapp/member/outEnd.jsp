<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	
	@font-face {
		font-family: 'KOTRA_BOLD-Bold';
   		src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_20-10-21@1.1/KOTRA_BOLD-Bold.woff') format('woff');
    	font-weight: normal;
    	font-style: normal;
	}
	
	#bye {
		font-family: 'KOTRA_BOLD-Bold';
	}
	
	#a {
		margin-top : 15px;
	}
</style>
</head>

<center>
<body>
	<div id="bye" style="font-size:54pt">Bye!</div>
	<div id="a">
		<span>
		<input type="button" value="로그인전메인이동" onclick="location.href='/main/page.do'">
		</span>
	</div>
	
</body>
</center>
</html>