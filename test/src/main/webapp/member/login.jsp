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
		document.getElementById("popUp").remove();
		document.getElementById("logoutBtn").checked=false;
		document.getElementById("popUpParent").style.backdropFilter = "blue(0px)";
		document.getElementById("popUpParent").style="background : rgba(169 ,169, 169,0)";
	}

	function loginDo() {
		let userId = document.getElementById("b").value;
		let password = document.getElementById("c").value;
		
		$.ajax({
			url : '${pageContext.request.contextPath }/member/password.do',
			type : "post",
			data : {"userId": userId, "password" : password},
			dataType : "json",
			success : function(result) {
				if(result.flag == true) {
					$.ajax({
						url : '${pageContext.request.contextPath }/member/login.do',
						type : "post",
						data : {"userId": userId, "password" : password},
						success : function(result) {
							$("#popUp").hide();
							$("#popUpParent").css("backdrop-filter","blur(0px)");
							$("#popUpParent").css("background","rgba(169 ,169, 169,0)");
							$("#personCircle").show();
						},
						error : function(req, status, error){
							console.log(status);
						}
					});
				} else {
					console.log("비밀번호 불일치");
					$("#log").html("비밀번호 불일치");				
				}
			},
			error : function(req, status, error){
				console.log(status);
			}
		});
	}
	
</script>
</head>

<body>
<!-- <div class="login_popup" align="center"> -->
   <div id="pop">
      <div id="a"><img src="/test/image/logo4.png" width="140"></div>
      <form action="${pageContext.request.contextPath }/member/join.do" method="post">
         <div><input id="b" type="text" name="userId" placeholder="아이디"></div>
         <div><input id="c" type="password" name="password" placeholder="비밀번호"></div>
         <div>
         <div id="log"></div>
         <input id="log" type="button" class="button" value="로그인" onclick="loginDo()">
         <input id="e" type="button" class="button" value="회원가입" onclick="joinDo()">
         </div>
      	 <div id="f">
      	 <img src="../image/close.png" style="width:30px" onclick="frameclose()">
      	 </div>
      </form>
      </div>
<!-- </div> -->

<script>

jQuery.fn.center = function () {
    this.css("position","absolute");
    this.css("top", ( jQuery(window).height() - this.height() ) / 2+jQuery(window).scrollTop() + "px");
    this.css("left", ( jQuery(window).width() - this.width() ) / 2+jQuery(window).scrollLeft() + "px");
    return this;
  }
  
jQuery(".login_popup").center();

</script>
</body>

</html>