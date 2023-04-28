<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="navcss.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-qEan5nS02+Q5oN58dmG9N9Z4f4MT4yaNzFw/iRkRJzMA8+CDGt90E3l3J9Pm+Z8lCGYIda3Cw0V7dA8W8Kvztg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	function closeX(){
		document.getElementById("popUp").remove();
		document.getElementById("logoutBtn").checked=false;
		console.log("하이~");
	}
	
	function lBtn(){
		console.log("버튼클릭");
 		let flag=document.getElementById("logoutBtn").checked;
 		let popUp = document.createElement("div");
 		popUp.setAttribute("id","popUp");
 		document.querySelector("#popUpParent").append(popUp);
 		
 		if(flag){
 			$.ajax({
 				type : "GET",
 				url : "${pageContext.request.contextPath}/member/login.do",
 				dataType : "text",
 				error : function(){
 					console.log("에러");
 				},
 				success : function(data){
 					console.log(data);
 					
 					$("#popUp").html(data);
 				}
 			})
 			
 			//let win = window.open("${pageContext.request.contextPath }/member/login.jsp", 'win', 'top=100, botton=100')
 			// 버튼 키면 로그인창으로 넘어가기 
 			//location.href="${pageContext.request.contextPath}/member/login.do";
 		} else {
 			// 버튼 끄면 로그아웃창으로 넘어가기 
 			location.href="${pageContext.request.contextPath}/member/logout.do?userId=${sessionScope.userId}";
 		}
 	}
 	
 	window.onload = function(){
 		let userId = "${sessionScope.userId}";
 		console.log("userId :"+userId);
 		if(userId.length > 0){
 			console.log("로그인을 하려고 하거나 된 상태?");
 			document.getElementById("logoutBtn").checked=true;
 		} else {
 			console.log("로그인 안 된 상태");
 			document.getElementById("logoutBtn").checked=false;
 			document.getElementById("personCircle").style="display:none";
 		}
 	}
 	
	function joinDo(){
		// ${pageContext.request.contextPath }/member/join.do
		$.ajax({
 			type : "GET",
 			url : "${pageContext.request.contextPath}/member/join.do",
 			dataType : "text",
 			error : function(){
 				console.log("에러");
 			},
 			success : function(data){
 				console.log(data);
 					
 				$("#popUp").html(data);
 			}
 		})
	}
	
	function idJoin(){
		var pattern = /\s/g;
		// 공백 검사를 해주는 정규표현식
		let userId = joinInfo.userId.value;
		let password = joinInfo.password.value;
		let checkpwd = joinInfo.checkpwd.value;
		let nickname = joinInfo.nickname.value;

		//let form = document.joinInfo;
		//form.method='POST';
		//form.action="${pageContext.request.contextPath}/member/join.do";
		
		$.ajax({
			type : "POST",
			url : "${pageContext.request.contextPath}/member/join.do",
			dataType : "text",
			error : function(){
					console.log("에러");
				},
				success : function(data){
					console.log(data);
						
					$("#popUp").html(data);
				}
		});
		
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
</script>

</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: black;" aria-label="Fifth navbar example">
		<div class="container-fluid">
			<div class="home-btn" onclick="location.href='${pageContext.request.contextPath }/main/page.jsp';">
			<img class="logo" src="${pageContext.request.contextPath}/image/logo.png">
			<div class="logo_name_area" align="left" ><span class="logo_name">조각별</span></div>
			</div>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsExample05"
				aria-controls="navbarsExample05" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarsExample05" align="right">

				<!--     검색하기 -->
				<div class="search_area" align="right">
					<input class="form-control iptfind" type="search"
						placeholder="작가, 감독으로 찾기" maxlength="8" aria-label="Search"> 

					<div class="icon_area">
						<div class="bi bi-search fs-3 icon"></div>
					</div>
				</div>
				

				<ul class="navbar-nav mb-2 mb-lg-0">


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="bi bi-film fs-3"></i></a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something elseqq
									here</a></li>
						</ul></li>

					<li class="nav-item" id="personCircle">
						<a class="nav-link" href="${pageContext.request.contextPath}/member/mypage.do?userId=${sessionScope.userId}">
						<i class="bi bi-person-circle fs-3"></i>
						</a>
					</li>

					<label id="logoutLabel"> <input class="ipt_logout" role="switch"
						type="checkbox" id="logoutBtn" name="logoutBtn"
						onclick="lBtn()" />
					</label>
				</ul>

			</div>
		</div>
	</nav>
	
	<div id="popUpParent">
		<div id="popUp"></div>
	</div>
	
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>