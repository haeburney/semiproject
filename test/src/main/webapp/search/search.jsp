<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
 
<link rel="stylesheet" href="/submain/navcss.css">

<title>검색(인기순)</title>
<style>
.card{
margin:auto;
}

.main_content{
padding-top: 30px;
}

.poster{
width: 150px;
height: 225px;
border-radius: 10px;
}


body{
background-color:#212121 !important;
}

.img_box{
float:left;
width: 150px !important;
}

.desc_box{
float:left;
width: 70vw !important;
height:225px !important;
margin: 0;
flex-direction: row !important;
}

.movie_desc{
width:150%;
}

@media (max-width:800px){
.movie_desc{
width:100%;
}
}

.card_box{
	transition: all 0.2s linear;
}

.card_box:hover{
	transform: scale(1.03); /* 1.1 변경하면 글씨 가려짐 */
}

</style>
</head>
<body>
<!-- 네비바 -->
<%@include file="/submain/nav.jsp" %>


<div class="main_content">
<div style="width:100%;">
<p style="display: block; width:1200px; margin: auto; color:white;">검색 결과 : ' ${text } '</p>
</div>
<c:forEach var="vo" items="${searchlist }">
	<div class="card mb-2 card_box" style="max-width:80%; flex-direction:row; border-radius:8px; margin-top: 20px;">
	  
	    <div class="col-md-4 img_box">
	      <a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
	      <img src="https://image.tmdb.org/t/p/original${vo.poster_path}" class="poster" alt="검색결과">
	      </a>
	    </div>
	    
	    <div class="desc_box">
	    <div class="col-md-8">
	      <div class="card-body">
	        <h5 class="card-title"><b>${vo.title }</b></h5>
	        <p><small class="text-muted">개봉일: ${vo.release_date }</small></p>
	        <p class="movie_desc">${vo.overview }</p>
	      </div>
	    </div>
	    </div>
	 
	</div>
</c:forEach>
</div>
<script>
/* function isTextOverflown(element, maxLength) {
  return element.textContent.length > maxLength;
}

let paragraph = document.getElementByClassName('.movie_desc');
console.log(paragraph);
let button = document.createElement('button');
button.textContent = '더 보기';

paragraph.forEach(button=> {
if (isTextOverflown(paragraph, 50)) {
	  let originalText = paragraph.textContent;
	  let truncatedText = originalText.substring(0, 50) + '...';
	  paragraph.textContent = truncatedText;
	  paragraph.appendChild(button);
	  
	  button.addEventListener('click', () => {
	    paragraph.textContent = originalText;
	    paragraph.removeChild(button);
	  });
	}
}); */
	
</script>
</body>
</html>