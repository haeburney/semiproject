<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.css">
<script src="https://cdn.jsdelivr.net/npm/sweetalert2@11.4.10/dist/sweetalert2.min.js"></script>
<title>상영시작 5초전</title>
<style>
body{
	background-color: #212121;
}

.cnt{
	text-aline:center;
	padding-left:460px;
}
</style>



</head>
<body>

<div class="cnt">
<img src="${pageContext.request.contextPath }/image/count.gif">
</div>

<script>
window.onload = function() {
      swal.fire({
        icon: 'success',
        title: '영화가 곧 시작됩니다.\n' +
              '상영이 될때까지 대기해 주세요👍\n'
      })
      
         setTimeout(function(){
           location.href = "${pageContext.request.contextPath }/main/page.jsp";
         }, 5000); // 5초 후에 이동할 페이지 주소를 입력하세요.
    
}
</script>
</body>
</html>