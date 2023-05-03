<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/member/mypageCss.css?after">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<style>



</style>

</head>

<body id="pBody">
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

	<div id="linesParent">
		<div id="lines">
		<!-- 한 줄 소개가 없다면 -->
		<c:if test="${empty vo.introLine }">
			<form name="addForm" id="aForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="addLine" >작은 조각 작성하기</div>
 				<input id="addBtn" type="button" value="한줄쓰기" onclick="add()">
				<input id="addEnd" type="button" value="쓰기완료" style="display:none" onclick="readAdd()">
			</form>
			
			<form name="editForm" id="eForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post" style="display:none">
				<div id="editLine">${vo.introLine }</div>
				<input id="editBtn" type="button" value="수정하기" onclick="edit()">
				<input id="editEnd" type="button" value="수정완료" style="display:none" onclick="readEdit()">
				<input type="button" value="삭제하기" onclick="deleteLine()">
			</form>
		</c:if>

			
	
		<!-- 한 줄 소개가 있다면 -->
 		<c:if test="${not empty vo.introLine }"> 
 			<form name="addForm" id="aForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post" style="display:none">
				<div id="addLine">작은 조각 작성하기</div>
 				<input id="addBtn" type="button" value="한줄쓰기" onclick="add()">
				<input id="addEnd" type="button" value="쓰기완료" style="display:none" onclick="readAdd()">
			</form>	
 		
			<form name="editForm" id="eForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="editLine">${vo.introLine }</div>
				<input id="editBtn" type="button" value="수정하기" onclick="edit()">
				<input id="editEnd" type="button" value="수정완료" style="display:none" onclick="readEdit()">
				<input type="button" value="삭제하기" onclick="deleteLine()">
			</form>
 		</c:if> 
 		
 		
 		
		</div>
	</div>
	
	<div id="coffee" style="display:none">
		<c:if test="${not empty americano }">
			<c:forEach var="li" items="${americano }">
					<a href="${pageContext.request.contextPath }/member/otherUser.do?userId=${sessionScope.userId }&followedId=${recent.userId}">
							 ${li.followedId }
							 </a>
			</c:forEach>
		</c:if>
	</div>
	

	<div id="allListParent">
		<div id="allList">
			<div id="follow">
				<span id="nickname">
					<c:if test="${not empty sessionScope.userId }">
					${sessionScope.userId }
					</c:if>
				</span>
				<span id="fCount">
					<c:if test="${not empty uCount }">
					<input id="myFollowing" type="button" class="button" value="팔로잉수 ${uCount }" onclick="following()">
					</c:if>
				<c:if test="${not empty fCount }">
					<span>팔로워수 ${fCount }</span>
				</c:if>
				</span>
				<span>
					<!-- 	모달 -->
					<input type="checkbox" id="popup2">
					<label for="popup2">
						<img src="../image/option.png" style="width:25px">
					</label>
					<div>
					<div>
						<label for="popup2"></label>
						여기에 본문 넣기 
						<%@include file="/member/edit.jsp" %>
					</div>

					<label for="popup2">
					</label>
					</div>
	
<!-- 	모달 -->
				
<!-- 					설정 이미지 -->	

				</span>
			</div>	
			<hr style="border: solid 1px #cecece; opacity:1; margin:0px"/>
			
				<div>
					<div class="listPlus">
						<span>찜목록</span>
						<a href="${pageContext.request.contextPath }/detail/myWishView.do?userId=${sessionScope.userId}"><img class="plustImg" src="../image/plus.png"></a>
					</div>
					<c:if test="${not empty wishImageList }">
						<c:forEach var="li" items="${wishImageList }">
							
							<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
						</c:forEach>
					</c:if>
				</div>
				<hr style="border: solid 0.5px #cecece; opacity:1; margin:0px"/>
				<div>
					<div class="listPlus">
						<span>별점목록</span>
						<a href="${pageContext.request.contextPath }/detail/starView.do?userId=${sessionScope.userId}"><img class="plustImg" src="../image/plus.png"></a>
					</div>
					<c:if test="${not empty starImageList }">
						<c:forEach var="li" items="${starImageList }">
							
							<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
						</c:forEach>
					</c:if>
				</div>
				<hr style="border: solid 0.5px #cecece; opacity:1; margin:0px"/>
				<div>
					<div class="listPlus">
						<span>코멘트목록</span>
						<a href="${pageContext.request.contextPath }/comments/myList.do?userId=${sessionScope.userId }"><img class="plustImg" src="../image/plus.png"></a>
					</div>
					<c:if test="${not empty commentsImageList }">
						<c:forEach var="li" items="${commentsImageList }">
							
							<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
						</c:forEach>
					</c:if>
				</div>
			
		</div>
	</div>
	

	<div id="option">
	</div>
	
	<input type="checkbox" id="popup2">
					<label for="popup2">
						<img src="../image/option.png" style="width:25px">
					</label>
					<div>
					<div>
						<label for="popup2"></label>
						여기에 본문 넣기 
						<%@include file="/member/edit.jsp" %>
					</div>

					<label for="popup2">
					</label>
					</div>
	
	<script>
	
	
	function edit(){
		console.log("edit()");
		let writed=document.getElementById("editLine").textContent;
		let txt = "<input type='text' name='introLine' value='" + writed + "'>";
		document.getElementById("editLine").innerHTML=txt;
		document.getElementById("editBtn").style="display:none";
		document.getElementById("editEnd").style="display:";
	}
	
	function add(){
		console.log("add()");
		let txt = "<textarea cols='50' name='introLine'>마음에 드는 영화 대사를 적어보세요</textarea>";
		document.getElementById("addLine").innerHTML=txt;
		document.getElementById("addBtn").style="display:none";
		document.getElementById("addEnd").style="display:";
	}
	
	function myInfoEdit(){
		console.log("myInfoEdit()");
		const xhttp = new XMLHttpRequest();
		
		xhttp.onload = function(){
			let result = xhttp.responseText;
			console.log(result);
			document.getElementById("option").innerHTML=result;
			document.getElementById("pwd").placeholder="${vo.password}";
			document.getElementById("nickName").placeholder="${vo.nickname}";
			console.log("${vo.userId} / ${vo.nickname}")
		}
		
		xhttp.open("GET", "${pageContext.request.contextPath }/member/edit.do?useriId=${sessionScope.userId}");
		xhttp.send();
	}
	
	function readEdit(){
		console.log("readEdit()");
		let answer="";
		let introLine = editForm.introLine.value;
		let param = {'userId':'${sessionScope.userId}', 'introLine': introLine };
		console.log(param);
		// 이게 될까? 
		
		$.ajax({
			url : '${pageContext.request.contextPath }/member/editLine.do',
			type : 'post',
			data : param,
			dataType : 'text',
			success : function(result){
				answer = result;
				console.log("answer :"+answer);
				
				document.getElementById("editLine").innerHTML=result;
				document.getElementById("editBtn").style="display:";
				document.getElementById("editEnd").style="display:none";
				//document.getElementById("introLine").value=result;
				
			},
			error : function(req, status, error){
				console.log("에러 :"+status);
			}
		});
	}
	
	function readAdd(){
		console.log("readAdd()");
		let introLine = addForm.introLine.value;
		let param = {'userId':'${sessionScope.userId}', 'introLine': introLine };
		console.log(param);
		// 이게 될까? 
		
		$.ajax({
			url : '${pageContext.request.contextPath }/member/editLine.do',
			type : 'post',
			data : param,
			dataType : 'text',
			success : function(result){
				console.log(result);
				document.getElementById("addLine").innerHTML="작은 조각 작성하기";
				document.getElementById("addBtn").style="display:";
				document.getElementById("addEnd").style="display:none";
				document.getElementById("aForm").style="display:none";
				document.getElementById("eForm").style="display:";
				document.getElementById("editLine").innerHTML=result;
				//document.getElementById("introLine").value=result;
				
			},
			error : function(req, status, error){
				console.log("에러 :"+status);
			}
		});
	}
	
	function deleteLine(){
		console.log("deleteLine()");
		$.ajax({
			url : '${pageContext.request.contextPath }/member/delLine.do',
			type : 'post',
			data : {userId : '${sessionScope.userId}'},
			success : function(result){
				document.getElementById("eForm").style="display:none";
				document.getElementById("aForm").style="display:";
			},
			error : function(req, status, error){
				console.log("에러 :"+status);
			}
		});
	}
	
	function following(){
		document.getElementById("coffee").style="display:";
	
	}
	

</script>
</body>
</html>