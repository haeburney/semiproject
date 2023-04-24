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
color : blue;
}
</style>

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

function idJoin(){
	var pattern = /\s/g;
	let userId = joinInfo.userId.value;
	let password = joinInfo.password.value;
	let checkpwd = joinInfo.checkpwd.value;
	let nickname = joinInfo.nickname.value;

	let form = document.joinInfo;
	form.method='POST';
	form.action="${pageContext.request.contextPath}/member/join.do";
	
	if(password != checkpwd){
		alert("비밀번호가 일치하지 않습니다.");
	} else if (userId.length==0){
		alert("아이디를 입력해주세요");
	} else if (password.length==0){
		alert("비밀번호를 입력해주세요");
	} else if(nickname.length==0){
		alert("닉네임을 입력해주세요");
	}
	
	if(userId.match(pattern) || password.match(pattern)){
		alert("공백을 없애주세요.");
	} else {
		form.submit();
	}
}


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

</script>
</head>
<body>
	<h4>재연이 언니가 만든 로그인 jsp에서 회원가입 버튼을 누르면 여기로 올 수 있게</h4>
	
	<form name="joinInfo" id="jj" action="${pageContext.request.contextPath }/member/join.do" action="post">
		<div>아이디 <span id="spanId"></span></div>
		<input type="text" name="userId" placeholder="아이디 입력">
		<input type="button" value="중복 확인" onclick="idcheck()">
		<div>비밀번호 <span id="spanPwd"></span></div>
		<input type="password" name="password" id="password" placeholder="비밀번호 입력">
		<div>비밀번호 확인</div>
		<input type="password" name="checkpwd" id="checkpwd" placeholder="비밀번호 확인">
		<div>닉네임</div>
		<input type="text" name="nickname" placeholder="닉네임 입력">
		<input type="button" value="가입완료" onclick="idJoin()">
		<input type="button" value="가입취소" id="cancel" onclick="cancel()">
		
	</form>

</body>
</html>