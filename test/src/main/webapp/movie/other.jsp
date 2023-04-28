<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
 <link rel="stylesheet" href="moviecss.css"> 
 <meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<body>

<!-- 동영상 -->
<div class='jb-box'>
		<c:if test="${not empty key}">
			<iframe src="https://www.youtube.com/embed/${key}?controls=0&rel=0&modestbranding=1&autoplay=1&loop=1&wmode=opaque&rel=0&disablekb=1&cc_load_policy=1"
				frameborder="0" framespacing="0" marginheight="0" marginwidth="0"
				scrolling="no" vspace="0"
				allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture"
				allowfullscreen> </iframe>
		</c:if>
		</div>

<!-- 한줄 조각 남기기 -->
<button class="collapsible">한줄조각남기기</button>
<div class="content">
<input type="text" placeholder="한 줄 조각을 남겨주세요" 
style="width:600px;height:50px;font-size:20px; border:none;">
  <p placeholder ="한 줄 조각을 남겨주세요"></p>
</div>

<script>
var coll = document.getElementsByClassName("collapsible");
var i;

for (i = 0; i < coll.length; i++) {
  coll[i].addEventListener("click", function() {
    this.classList.toggle("active");
    var content = this.nextElementSibling;
    if (content.style.maxHeight){
      content.style.maxHeight = null;
    } else {
      content.style.maxHeight = content.scrollHeight + "px";
    } 
  });
}
</script>



<!-- <div class="row"> -->

<!--   <div class="column"> -->
<!--     <h2>Column</h2> -->
<!--     <p> 인포메이션</p> -->
<!--   </div> -->
  
<!--   <div class="column"> -->
<!--     <h2>Column</h2> -->
<!-- <p>남의 댓글 </p> -->
<!-- </div> -->
  
<!--   <div class="column"> -->
<!--     <h2>Column</h2> -->
<!-- <p>내 댓글<p> -->
<!--   </div> -->
  
<!-- </div> -->


</body>
</html>