<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
#spanPwd, #spanId{
color : #FFDD55;
}

#password, #checkpwd{
	outline: 0;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 3px solid gray;
	width: 170px;
	height: 24px;
	background-color: black;
	color: white;
	margin-bottom : 5px;
}


</style>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/loginJoinCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>

	$(document).ready(function(){
		$("#checkpwd").change(function(){
			let pwd = $("#password").val();
			let check = $("#checkpwd").val();
			
			if(pwd==check){
				$("#spanPwd").html("비밀번호 일치");
			} else {
				$("#spanPwd").html("비밀번호 불일치");
			}
		});
	});

	
	function idcheck(){
		const xhttp = new XMLHttpRequest();
		let txt=" ";
		
		xhttp.onload = function(){
			let val = xhttp.responseText;
			let obj = JSON.parse(val);
			if(obj.flag){
				txt = "사용 가능한 아이디";
				console.log(txt);
			} else{
				txt = "사용 불가능한 아이디";
				console.log(txt);
			}
			
			document.getElementById("spanId").innerHTML = txt;
		}
		
		let param = "?userId=" + joinInfo.userId.value;
		xhttp.open("GET", "${pageContext.request.contextPath}/member/idcheck.do" + param);
		xhttp.send();
	}

	
	function frameclose() {
		let pop = document.getElementById("pop");
		pop.style.display='none';
		document.getElementById("logoutBtn").checked=false;
	}
	
	function idJoin() {
		var pattern = /\s/g;
		if($('#password').val() != $('#checkpwd').val()){
			alert("비밀번호가 일치하지 않습니다.");
		} else if ($('#userId').val().length==0){
			alert("아이디를 입력해주세요");
		} else if ($('#password').val().length==0){
			alert("비밀번호를 입력해주세요");
		} else if($('#nickname').val().length==0){
			alert("닉네임을 입력해주세요");
		} else if($('#userId').val().match(pattern) || $('#password').val().match(pattern)){
			alert("공백을 없애주세요.");
		} else {
			var param = {
					userId: $('#userId').val(),
					password: $('#password').val(),
					nickname: $('#nickname').val()
						};
			
			$.ajax({
				type : "POST",
				url : "${pageContext.request.contextPath}/member/join.do",
				data: param,
				dataType : "text",
				error : function(){
					console.log("에러");
				},
				success : function(data){
					$("#popUp").html(data);
				}
			});
		}
		
	}
</script>
</head>
<body>
	<div id="pop">
	<form name="joinInfo" action="${pageContext.request.contextPath }/member/join.do" action="post">
		<div id="a"><img src="/test/image/logo4.png" width="90"></div>
		<div><span id="spanId"></span></div>
		<input id="userId" type="text" name="userId" placeholder="아이디 입력">
		<div><input  class="button"  type="button" value="중복 확인" onclick="idcheck()"></div>
		<div ><span id="spanPwd"></span></div>
		<div><input type="password" name="password" id="password" placeholder="비밀번호 입력"></div>
		
		<div><input type="password" name="checkpwd" id="checkpwd" placeholder="비밀번호 확인"></div>
		
		<div><input id="nickname" type="text" name="nickname" placeholder="닉네임 입력"></div>
		<input class="button"  id="d" type="button" value="가입완료" onclick="idJoin()">
		<div id="f">
      	<img src="../image/close.png" style="width:30px" onclick="frameclose()">
      	</div>
	</form>
	</div>
</body>
</html>