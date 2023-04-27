<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginJoinCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script type="text/javascript">
	function frameclose() {
		let pop = document.getElementById("pop");
		pop.style.display='none';
	}

</script>
</head>
<center>
<body>
   <div id="pop">
      <div id="a"><img src="/test/image/logo4.png" width="140"></div>
      <form action="${pageContext.request.contextPath }/member/login.do" method="post">
         <div><input id="b" type="text" name="userId" placeholder="아이디"></div>
         <div><input id="c" type="password" name="password" placeholder="비밀번호"></div>
         <div>
         <a href="${pageContext.request.contextPath }/member/main/page.do">
         <input id="d" type="submit" class="button" value="로그인"></a>
         <input id="e" type="button" class="button" value="회원가입" onclick="joinDo()">
         </div>
      	 <div id="f">
      	 <img src="../image/close.png" style="width:30px" onclick="frameclose()">
      	 </div>
      </form>
      </div>
</body>
</center>
</html>