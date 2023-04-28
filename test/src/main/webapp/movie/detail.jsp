<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../submain/navcss.css"> 
<link rel="stylesheet" href="detailcss.css"> 
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
function Trailer(id) {
  var url = '${pageContext.request.contextPath}/move/video.do?id=' + id;
  window.location.href = url;
}



$(function() {//= $(document).ready(function() {
  var $likeBtn = $('.icon.heart'); //icon.heart 클래스를 찾아서 변수 var $likeBtn 에 담아줘

  $likeBtn.click(function() { //변수에 담은 var $likeBtn  를 누르면 function(함수)를 실행 
    $likeBtn.toggleClass('active');  //var $likeBtn에 'active'를 토글한다  

    if ($likeBtn.hasClass('active')) {//만약에 $likeBtn 이 'active' 클래스가 있으면 
      $(this).find('img').attr({ 
         //.attr : 요소의 속성을 가져오거나 설정하는 메소드 속성의 이름과 값을 {}객체 형태로 전달하여 요소의 속성을 설정할 수 있다. 
       'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
       //src 는 주소
        alt: '찜하기 완료'
        //alt 는 찜하기 완료 
      });


      $.ajax({ //ajax로 보내 
         type: 'GET', //포스트 방식으로 
         url: '${pageContext.request.contextPath}/movie/likeupdate.do'
         data: { 
           movieid : ${movieId }
           userId: ${sessionScope.userId},
           wish: 0 // 1 (안찜) 0 (찜) 으로 설정
         },
         success: function(response) {
           console.log('찜 ');
         },
         error: function() {
           console.log('노찜');
         }
       });
      
    } else {

//       $(this).find('i').removeClass('fas').addClass('far'); //이게 꼭 필요한가 싶음 

      $(this).find('img').attr({
        'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
        alt: '찜취소'
      });
      
      $.ajax({ //ajax로 보내 
         type: 'POST', //포스트 방식으로 
         url: ' "${pageContext.request.contextPath}/movie/likeupdate.do?movieId=" + ${movieId }',
         data: { 
           userId: ${sessionScope.userId},
           wish: 1 // 0 (찜) 1 (안찜) 으로 설정
         },
         success: function(response) {
           console.log('찜없어 ');
         },
         error: function() {
           console.log('찜계속 있다오류오류');
         }
       });
      
    }
  });
});


</script>
</head>
<%@include file="../submain/nav.jsp" %>

<body>
<div class="container">
   <img class="tmp_img" src="https://image.tmdb.org/t/p/original${file_path }"> 
   <div class="tmp_area">
      <h1>${title }</h1>
        <span>장르 / 상영시간 : ${name } ${runtime } </span>
        <br/>
        <span>태그라인 ${tagline }</span>
        <br/>
   
   
      

  <span class="icon heart">
     <img src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
  </span>

   
       


<!--        별찍기 -->

  <div class="star-rating">
    <span class="item item2">
      <input type="radio" id="5-stars" name="rating" value="5" />
      <label for="5-stars" class="star"><i class="bi bi-star-fill"></i></label>
      
      <input type="radio" id="4-stars" name="rating" value="4" />
      <label for="4-stars" class="star"><i class="bi bi-star-fill"></i></label>

      <input type="radio" id="3-stars" name="rating" value="3" />
      <label for="3-stars" class="star"><i class="bi bi-star-fill"></i></label>

      <input type="radio" id="2-stars" name="rating" value="2" />
      <label for="2-stars" class="star"><i class="bi bi-star-fill"></i></label>

      <input type="radio" id="1-star" name="rating" value="1" />
      <label for="1-star" class="star"><i class="bi bi-star-fill"></i></label>
    </span>
  </div>

        

<!--         예고편  -->
        <span>
        <button class="button button1" onclick="Trailer(${id})">예고편보기</button>
      </span>
   </div>

</div>

<!-- 코멘트 자리@ -->
<div class="tmp_bottom">
<div class="left">코멘트</div>
<div class="right">코멘트 더 보기</div>
</div>



<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" 
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" 
crossorigin="anonymous"></script>
</body>
</html>