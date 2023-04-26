<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="mypageCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>

<script>
	function edit(){
		let txt = "<input type='text' name='introLine' value='${vo.introLine}'>";
		document.getElementById("editLine").innerHTML=txt;
		document.getElementById("editBtn").style="display:none";
		document.getElementById("editEnd").style="display:";
	}
	
	function add(){
		let txt = "<textarea cols='50' name='introLine'>마음에 드는 영화 대사를 적어보세요</textarea>";
		document.getElementById("addLine").innerHTML=txt;
		document.getElementById("addBtn").style="display:none";
		document.getElementById("addEnd").style="display:";
	}
	
	function editForm(){
		console.log("후하");
		const xhttp = new XMLHttpRequest();
		
		xhttp.onload = function(){
			//let result = xhttp.responseText;
			//console.log(result);
			console.log("이해가 잘 안돼");
		}
		
		xhttp.open("GET", "${pageContext.request.contextPath }/member/edit.do?useriId=${sessionScope.userId}");
		xhttp.send();
	}
</script>
</head>

<body id="pBody">
<!-- 메뉴 상당바 출력 -->
<%@include file="/submain/nav.jsp" %>

<h4>여기는 mypagee</h4>
	<div id="linesParent">
		<div id="lines">
		<!-- 한 줄 소개가 없다면 -->
		<c:if test="${empty vo.introLine }">
			<form action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="addLine">작은 조각 작성하기</div>
 				<input id="addBtn" type="button" value="한줄쓰기" onclick="add()">
				<input id="addEnd" type="submit" value="쓰기완료" style="display:none">
			</form>
		</c:if>
	
		<!-- 한 줄 소개가 있다면 -->
 		<c:if test="${not empty vo.introLine }"> 
			<form action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="editLine">${vo.introLine }내가 작성한 글 </div>
				<input id="editBtn" type="button" value="수정하기" onclick="edit()">
				<input id="editEnd" type="submit" value="수정완료" style="display:none">
			</form>
 		</c:if> 
		</div>
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
					<span>팔로잉수 ${uCount }&nbsp;&nbsp;</span>
					</c:if>
				<c:if test="${not empty fCount }">
					<span>팔로워수 ${fCount }</span>
				</c:if>
				</span>
				<span>
<!-- 					설정 이미지 -->
					<a href="${pageContext.request.contextPath }/member/edit.do?useriId=${sessionScope.userId}">
					<img src="../image/option.png" style="width:25px">
					</a>
					<img src="../image/option.png" style="width:25px" onclick="editForm()">
				</span>
			</div>	
			<hr/>
				<div>
					<a href="#"><img class="plustImg" src="../image/plus.png"></a>
					<c:if test="${not empty detailImageList }">
						<c:forEach var="li" items="${detailImageList }">
							${li.id }
							<a href="#주소적고detail갈때?movieNum=${li.id }"><img src="${li.poster_path }" style="width:200px"></a>
						</c:forEach>
					</c:if>
					코멘트리스트해야함
				</div>
				<hr/><br/><hr/>
				<div>
					<a href="#"><img class="plustImg" src="../image/plus.png"></a>
					별점리스트해야함
				</div>
				<hr/><br/><hr/>
				<div>
					<a href="#"><img class="plustImg" src="../image/plus.png"></a>
					찜리스트해야함
				</div>
			
		</div>
	</div>
	
	<!-- 설정버튼 누르면 -->
	<div id="option">
	<c:if test="${not empty edit}">
		<jsp:include page="${edit }"/>
	</c:if>
	</div>
</body>
</html>