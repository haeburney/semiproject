<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체 코멘트</title>
<style>
	.header { height: 50px; width: 100%; background-color: #000000 }
	.contents { width: 100%; }
	.all { width: 50%; }
	.my { background-color: #eeeeee; margin-top: 50px; }
	.my_comment { height: 100px; width: 100%; background-color: #eeeeee; padding-left: 10px; margin-top: 50px;}
	.tabs { margin-left: -5%; margin-top: 50px; }
	ul { list-style: none; cursor: pointer; }
	li { float: left; margin-right: 20px; }
	.line { margin-top: 5%; margin-left: 5%; height: 1px; width: 95%; background-color: #000000; }
	.other_item { margin-top: 20px; padding-top: 2%; display: flex; background-color: #eeeeee; }
	.name_area { display: flex; align-items: center; padding-left: 20px; }
	.good_area { display: flex; align-items: center; float: right; padding-right: 5%; }
	.good { width: 40px; }
	.img_name { width: 40px; height: 40px; }
	.img_good { width: 20px; height: 20px; }
	.comment_area { padding-left: 20px; width: 80%; height: auto; box-sizing: border-box; }
	.comment { background-color: clear; height: 100%; width: 100%; border: 0; overflow-y: hidden; resize: none; }
	.date { padding-right: 3%; }
	
</style>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

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

<c:forEach var="vos" items="${vos}">

	<p>${vos.num}</p>
	<p>${vos.movieNum}</p>
	<p>${vos.userId}</p>
	<p>${vos.comments}</p>
	<p>${vos.w_Date}</p>
	<p>${vos.rate}</p>
	<p>${vos.spoiler}</p>

</c:forEach>
	<!--  헤더 -->
	<div class="header">
	
	
	
	</div>
	
	<div class="contents" align="center">
		<!-- 내용 -->
		<div class="all"> 
			<div class="my">
				<table style="width: 100%;">
						<tr>
							<td width="50%">
								<div class="name_area" align="left"> 
									<img class="img_name" src="./chat.png" /><span class="name"><b>닉네임은나</b></span>
								</div>
							</td>
							<td width="50%">
								<div align="right">
									<div class="good_area" align="right"> 
										<span class="name">좋아요</span><img class="img_good" src="./chat.png" /><span class="good">1004</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="comment_area">
									<br>
									<textarea class="comment" cols="20" rows="10" disabled>
										이것은 코멘트 입니다.이것은 코멘트 입니다.
										
										이것은 코멘트 입니다.
										이것은 코멘트 입니다.
										
										이것은 코멘트 입니다.
										
										
										
										이것은 코멘트 입니다.
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
			<div class="tabs">
				<ul>
					<li><b><u>BEST</u></b></li>
					<li><b><u>RECENT</u></b></li>
					<li><b><u>SPOILER</u></b></li>
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
								<div class="name_area" align="left"> 
									<img class="img_name" src="./chat.png" /><span class="name"><b>닉네임</b></span>
								</div>
							</td>
							<td width="50%">
								<div align="right">
									<div class="good_area" align="right"> 
										<span class="name">좋아요</span><img class="img_good" src="./chat.png" /><span class="good">1004</span>
									</div>
								</div>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<div class="comment_area">
									<br>
									<textarea class="comment" cols="20" rows="10" disabled>
										이것은 코멘트 입니다.이것은 코멘트 입니다.
										
										이것은 코멘트 입니다.
										이것은 코멘트 입니다.
										
										이것은 코멘트 입니다.
										
										
										
										이것은 코멘트 입니다.
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