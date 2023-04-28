<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath}/css/myListCss.css">
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
</head>
<body>
<%@include file="/submain/nav.jsp" %>
<c:if test="${not empty wList}">
	<c:forEach var="li" items="${wList }" varStatus="status">
		<div id="w${li.movieNum }">
			<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.movieNum }">
				<img src="${wImgList[status.index].poster_path }" style="width:200px">
			</a>	
		
			<input id="h${li.movieNum }" type="checkbox" value="찜" checked onclick="wish('${li.movieNum }')"/>
			${wImgList[status.index].title }
		<br/>
		</div>
	</c:forEach>	
</c:if>

<script>
function wish(num){
	let divMovie = "#w"+num;
	console.log(num);
	console.log('${sessionScope.userId}');
	let param = {movieNum : num, userId : '${sessionScope.userId}'};
	console.log(param);
	
	$.ajax({
		url : "${pageContext.request.contextPath }/detail/cancelwish.do",
		type : "post",
		data : {movieNum : num, userId : '${sessionScope.userId}'},
		success : function(result){
			console.log(result);
			$(divMovie).hide();
		},
		error : function(req, status, error){
			console.log("에러 :"+status);
		}
	});
}



</script>
</body>
</html>