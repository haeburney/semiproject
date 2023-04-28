<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 코멘트</title>

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="../submain/navcss.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-qEan5nS02+Q5oN58dmG9N9Z4f4MT4yaNzFw/iRkRJzMA8+CDGt90E3l3J9Pm+Z8lCGYIda3Cw0V7dA8W8Kvztg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />
	
<link href="https://cdn.jsdelivr.net/gh/sunn-us/SUIT/fonts/variable/woff2/SUIT-Variable.css" rel="stylesheet">

	
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>
/* 	@font-face {
	    font-family: 'SUIT Variable';
	    src: url('https://cdn.jsdelivr.net/gh/sunn-us/SUIT/fonts/variable/woff2/SUIT-Variable.css' format('sans-serif'));
	    font-weight: normal;
	    font-style: normal;
	    color: white;
	} */
	@font-face {
	    font-family: 'GangwonEduHyeonokT_OTFMediumA';
	    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2201-2@1.0/GangwonEduHyeonokT_OTFMediumA.woff') format('woff');
	    font-weight: normal;
	    font-style: normal;
	}
	.contents { width: 100%; background: black; font-family: 'SUIT Variable';
			    src: url('https://cdn.jsdelivr.net/gh/sunn-us/SUIT/fonts/variable/woff2/SUIT-Variable.css' format('sans-serif'));
			    font-weight: normal;
			    font-style: normal;
			    color: white; }
	.all { width: 50%; padding-top: 5%;}
	.my { background-color: rgb(22, 22, 22); border-radius: 10px; border: 2px solid rgb(249, 222, 109); }
	/* .my_comment { height: 100px; width: 100%; background: rgb(40,40,40); padding-left: 10px; margin-top: 50px; radius: 10px; } */
	.name { padding-left: 10px; }
	/* .good_num::before { color: #eeeeee; content: "|"; width: 1px; heignt: 5px; margin-left: 5px;} */
	.name_area { cursor: pointer; display: flex; align-items: center; padding-left: 20px; }
	.good_area { cursor: pointer; width: 110px; display: flex; align-items: center; float: right; margin-right: 20px; font-size: 0.7em; background: rgb(55, 55, 55); border-radius: 10px; }
	.good_name { padding-top: 5px; padding-bottom: 5px; padding-left: 10px; font-size: 0.5em; }
	.good_num { width: 40px; display: flex; align-items: center; padding-left: 5px;}
/* 	.good { padding-left: 5px; } */
	.slash { color: rgb(77, 77, 77); } 
	.img_name { width: 40px; height: 40px; }
	.img_good { width: 15px; height: 15px; margin-left: 5px;}
	.comment_area { padding-left: 20px; width: 80%; height: auto; box-sizing: border-box; }
	.comment { background-color: rgb(22, 22, 22); height: 100%; width: 100%; border: 0; overflow-y: hidden; resize: none; font-family: 'GangwonEduHyeonokT_OTFMediumA'; font-size: 1.5em; color: #ffffff; }
	.date { padding-right: 3%; font-size: 0.85em; color: #AFAFAF; }
	.icon_edit, .icon_delete { width: 20px; height: 20px; margin-right: 20px; }
	
	.tabs { margin-left: -3%; margin-top: 50px; }
	ul { list-style: none; cursor: pointer; }
	li { float: left; margin-right: 20px; }
	li:hover { color: rgb(249, 222, 109); }
	.line { margin-top: 5px; margin-left: 3%; height: 1px; width: 95%; background-color: #AFAFAF; }
	
	.other_item { margin-top: 10px; display: flex; background-color: rgb(22, 22, 22); border-radius: 10px; border: 2px solid #AFAFAF; }
	
	img { cursor: pointer; }
	
</style>


<script>
function requestParam(){
	//비동기 요청 객체 생성
	/* const xhttp = new XMLHttpRequest();

	xhttp.onload = function(){
		let val = xhttp.responseText;//{"flag":false}
		//alert(val);
		let html = '<h4 style="color:';
		let obj = JSON.parse(val);
		
		if(obj.flag){
			html += 'blue">사용가능한 아이디</h4>';
		}else{
			html += 'red">사용 불가능한 아이디</h4>';
		}
		let res = document.getElementById("res");
		res.innerHTML = html;//responseText:서버로부터 받은 응답값
	}
	//param: id
	let param = "?id=" + f.id.value;
	xhttp.open("GET", "${pageContext.request.contextPath}/member/idcheck.do" + param);
	xhttp.send(); */
	
	const Url = 'https://jsonplaceholder.typicode.com/posts';

	$('.btn').click(function () {
		const data = { name: 'said', id: 23 };

	    $.ajax({
	        url: Url,
	        type: 'GET', // 또는 POST
	        // data: data, // 만일 POST 타입을 쓴다면
	        // dataType: JSON 또는 HTML, XML, TXT, jsonp
	        success: function (result) {
		        console.log(result);	
	        },
	        error: function (error) {
		        console.log(`Error ${error}`);
	        },
		});
	});
}

</script>

</head>
<body>

<%-- <c:forEach var="vos" items="${vos}">

	<p>${vos.num}</p>
	<p>${vos.movieNum}</p>
	<p>${vos.userId}</p>
	<p>${vos.comments}</p>
	<p>${vos.w_Date}</p>
	<p>${vos.rate}</p>
	<p>${vos.spoiler}</p>

</c:forEach> --%>
	<!--  헤더 -->
	<jsp:include page="../submain/nav.jsp" flush="ture"/>
	
	<div class="contents" align="center">
		<!-- 내용 -->
		<div class="all"> 
			<div class="my">
				<table style="width: 100%;">
						<tr>
							<td width="50%">
								<br>
								<div class="name_area" align="left"> 
									<img class="img_name" src="../image/icon_profile.png" /><span class="name"><b>닉네임은나</b></span>
								</div>
							</td>
							<td width="50%">
								<div align="right">
									<div class="good_area" align="right"> 
										<span class="good_name">좋아요</span><img class="img_good" src="../image/thumbs-up.png" />
										<div class="good_num" align="right">
											<div class="slash">|</div>
											<div style="width: 40px;">
												<span class="good">1</span>
											</div>
										</div>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="comment_area">
									<br>
									<textarea class="comment" cols="20" rows="5" disabled>
이것은 코멘트 입니다.이것은 코멘트 입니다. 글자수에도 제한이 있답니다.이것은 코멘트 입니다.이것은 코멘트 입니다. 글자수에도 제한이 있답니다.
3
4
5
									</textarea>
									<br>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%" align="right">
								<img class="icon_edit" src="../image/edit.png" >
								<br>
								<img class="icon_delete" src="../image/delete.png" >
							</td>
						</tr>
						<tr>
							<td colspan="2" width="100%;" align="right">
								<span class="date">작성일 : 2020.04.10.</span>
							</td>
						</tr>
						<tr><td><br></td></tr>
					</table>
			</div>
			<div class="tabs">
				<ul>
					<li><b>BEST</b></li>
					<li><b>RECENT</b></li>
					<li><b>SPOILER</b></li>
					<li onclick="add();"><b><u>임시버튼(나중에 삭제)</u></b></li>
				</ul>
				<br>
				<div class="line"></div>
			</div>
			
			<div class="other">
			
				<br>
				<div class="other_item">
					<table style="width: 100%;">
							<tr>
								<td width="50%">
									<br>
									<div class="name_area" align="left"> 
										<img class="img_name" src="../image/icon_profile_gray.png" /><span class="name"><b>닉네임은너</b></span>
									</div>
								</td>
								<td width="50%">
									<div align="right">
										<div class="good_area" align="right"> 
											<span class="good_name">좋아요</span><img class="img_good" src="../image/thumbs-up.png" />
											<div class="good_num" align="right">
												<div class="slash">|</div>
												<div style="width: 40px;">
														<span class="good">1</span>
													</div>
												</div>
											</div>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2">
										<div class="comment_area">
											<br>
											<textarea class="comment" cols="20" rows="5" disabled>
이것은 코멘트 입니다.이것은 코멘트 입니다. 글자수에도 제한이 있답니다.이것은 코멘트 입니다.이것은 코멘트 입니다. 글자수에도 제한이 있답니다.
3
4
5
											</textarea>
											<br>
										</div>
									</td>
								</tr>
								<tr>
									<td colspan="2" width="100%;" align="right">
										<span class="date">작성일 : 2020.04.10.</span>
									</td>
								</tr>
								<tr><td><br></td></tr>
							</table>
					</div>
					<br>
				</div>
					
			</div>
		</div>

	
	<script>

	function add() { // 나중에 삭제할것 (버튼 클릭시 아이템 추가됨)
		
		var html = '';
		html += '<br>';
	
		html += '<div class="other_item">';
		
		html += '    <table style="width: 100%;">';
		html += '        <tr>';
		html += '            <td width="50%">';
		html += '                <div class="name_area" align="left">';
		html += '                    <img class="img_name" src="./chat.png" /><span class="name"><b>닉네임</b></span>';
		html += '                </div>';
		html += '            <td>';
		html += '            <td width="50%">';
		html += '                <div align="right">';
		html += '                    <div class="good_area" align="right">';
		html += '                    <span class="name">좋아요</span><img class="img_good" src="./chat.png" /><span class="good">1004</span>';
		html += '                </div><td></tr>';
		html += '        <tr>';
		html += '            <td colsoan="2">';
		html += '                <div class="comment_area">';  
		html += '                    <br>';
		html += '                    <textarea class="comment" cols="20" rows="10" disabled>';
		html += '                        남이 쓴 코멘트';
		html += '                    </textarea>';
		html += '                    <br></div></td></tr>';
		
		html += '<tr><td colspan="2" width="100%;" align="right">';
		html += '<span class="date">작성일 : 2020.04.10.</span>';
		html += '</td></tr><tr><td><br></td></tr></table></div>';
		
		
		$('.other').append(html);
	}
	</script>
</body>
</html>