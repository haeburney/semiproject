<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%> 
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/detailCss.css?after">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.starbtn:hover{
	transform:scale(1.1);
  	transition: transform .2s;
}
.starbtn{
	cursor : pointer;
}
 /* 별점주기 */
.star-rating {
  display: inline-block;
  
  font-size: 0;
  margin: 0;
  padding: 0;
  
  /*거꾸로 별점 다시잡기*/
  display: inline-block;
  direction: rtl;
}

.star-rating input {
  display: none;
}

.star-rating label {
  color: #ddd;
  font-size: 2rem;
  margin: 0 0.2rem;
  cursor: pointer;
}

.star-rating label:hover,
.star-rating label:hover ~ label,
.star-rating input:checked ~ label {
  color: #FADE6D;
}

.star-rating input:checked ~ label {
  color: #FADE6D;
} 
</style>
</head>

<body id="listBody">
<%@include file="/submain/nav.jsp" %>
<h2>별점 목록</h2>
<span>
	<div class="star-rating">
		<input type="radio" id="5-stars" name="rating" value="5" /> 
		<label for="5-stars" class="star">★</label> 
		<input type="radio" id="4-stars" name="rating" value="4" /> 
		<label for="4-stars" class="star">★</label> 
		<input type="radio" id="3-stars"name="rating" value="3" />
		<label for="3-stars" class="star">★</label> 
		<input type="radio" id="2-stars"name="rating" value="2" /> 
		<label for="2-stars" class="star">★</label> 
		<input type="radio" id="1-star" name="rating" value="1" /> 
		<label for="1-star" class="star">★</label>
	</div>
</span>


<div id="msg">
	위를 누르세요~
</div>
<c:if test="${not empty sList}">
	<div id="star1" style="display:none">
		별점 1
		<c:forEach var="li" items="${s1ImgList }">
			<div>
				<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
					<img src="${li.poster_path }" style="width:200px">
				</a>
				<div>${li.title }</div>
			</div>
		</c:forEach>

	</div>
	
	<div id="star2" style="display:none">
		별점 2
		<c:forEach var="li" items="${s2ImgList }">
			<div>
				<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
					<img src="${li.poster_path }" style="width:200px">
				</a>
				<div>${li.title }</div>
			</div>
		</c:forEach>
	</div>
	
	<div id="star3" style="display:none">
		별점 3
		<c:forEach var="li" items="${s3ImgList }">
			<div>
				<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
					<img src="${li.poster_path }" style="width:200px">
				</a>
				<div>${li.title }</div>
			</div>
		</c:forEach>	
	</div>
	
	<div id="star4" style="display:none">
		별점 4
		<c:forEach var="li" items="${s4ImgList }">
			<div>
				<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
					<img src="${li.poster_path }" style="width:200px">
				</a>
				<div>${li.title }</div>
			</div>
		</c:forEach>
	</div>
	
	<div id="star5" style="display:none">
		별점 5
		<c:forEach var="li" items="${s5ImgList }">
			<div>
				<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }">
					<img src="${li.poster_path }" style="width:200px">
				</a>
				<div>${li.title }</div>
			</div>
		</c:forEach>
	</div>


</c:if>

<script>

$('.star-rating input').click(function() {
	 
    var value = $(this).val();
    console.log(value);
    
    let star='star'+value;
	document.getElementById("msg").style="display:none";
	
	for(let i=1; i<=5; i++){		
		var a = document.getElementById("star"+i);
		if(a.style.display === ''){
			a.style.display = 'none';
		}
	}
	document.getElementById(star).style="display:";
    
});
</script>
</body>
</html>