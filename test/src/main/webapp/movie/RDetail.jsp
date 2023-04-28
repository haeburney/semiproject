<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../submain/navcss.css">
<link rel="stylesheet" href="RDetailcss.css">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

</head>
<%@include file="../submain/nav.jsp"%>

<body class ="yess">

	<div class="container">
	
		<img class="tmp_img"
			src="https://image.tmdb.org/t/p/original${file_path }">
			
		<div class="tmp_area">
		
			<h1>${title }</h1>

			<span>장르 / 상영시간 : ${name } 
			<img src="${pageContext.request.contextPath}/image/home-cinema.png"> ${runtime }</span> <br /> 
			<span>${tagline }</span> <br />
			<span> 평점 : ${vote_average}</span><br/>


<!-- heart 좋아요 클릭시!  -->
			<script>
    $(function(){
    	
        var $likeBtn =$('.icon.heart');  
        let movieId = "${movieId}";
        	 let isWished = '${flag}''; //true : 좋아요 했다. 

        	  if (isWished=='true') {
        	    $likeBtn.addClass('active');
        	    $likeBtn.find('img').attr({
        	      'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
        	      alt:'찜하기 완료'
        	    });
        	  }
        
            $likeBtn.click(function(){
            $likeBtn.toggleClass('active');

            if($likeBtn.hasClass('active')){          
                $(this).find('img').attr({
                   'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
                    alt:'찜하기 완료'
                    
                });
                console.log("찜");
              } else {
                $(this).find('i').removeClass('fas').addClass('far')
                $(this).find('img').attr({
                   'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
                   alt:"찜하기"
                
                })
                console.log("찜 취소");
              }
            
            $.ajax ({
                url : '${pageContext.request.contextPath }/movie/wishAdd.do',
                type : "post",
                data : {"userId" : "${sessionScope.loginId}" ,"movieId" : movieId},
               success : function(result) {
               }
            });
         });
    })
</script>
<!-- 하트이모지 -->
			<div class="right_area">
				<a href="javascript:;" class="icon heart"> <img
					src="https://cdn-icons-png.flaticon.com/512/812/812327.png"
					alt="찜하기">
				</a>
			</div>

			<!-- 별점 구현하기  -->
			<span>
				<div class="star-rating">
					<span class="item item2"> <input type="radio" id="5-stars"
						name="rating" value="1" /> <label for="5-stars" class="star"><i
							class="bi bi-star-fill"></i></label> <input type="radio" id="4-stars"
						name="rating" value="2" /> <label for="4-stars" class="star"><i
							class="bi bi-star-fill"></i></label> <input type="radio" id="3-stars"
						name="rating" value="3" /> <label for="3-stars" class="star"><i
							class="bi bi-star-fill"></i></label> <input type="radio" id="2-stars"
						name="rating" value="4" /> <label for="2-stars" class="star"><i
							class="bi bi-star-fill"></i></label> <input type="radio" id="1-star"
						name="rating" value="5" /> <label for="1-star" class="star"><i
							class="bi bi-star-fill"></i></label>
					</span>
				</div>
			</span>

			<script type="text/javascript">
//별점 평가 

$(document).ready(function() {
	
     var inputValue = $("input[name='rating']:checked").val();
     var userId = "${sessionScope.loginId}";
     let movieId = "${movieId}";
     let star = "${star}";
     
     if (star == 5) {
    	  // 별점이 5점인 경우 모든 별을 노란색으로 표시
    	  $('.star-rating input').prop('checked', true);
    	} else if (star == 4) {
    	  // 별점이 4점인 경우 1개의 별을 회색으로, 나머지 4개를 노란색으로 표시
    	  $('.star-rating input').eq(0).prop('checked', false);
    	  $('.star-rating input').eq(1).prop('checked', true);
    	  $('.star-rating input').eq(2).prop('checked', true);
    	  $('.star-rating input').eq(3).prop('checked', true);
    	  $('.star-rating input').eq(4).prop('checked', true);
    	} else if (star == 3) {
    	  // 별점이 3점인 경우 2개의 별을 회색으로, 나머지 3개를 노란색으로 표시
    	  $('.star-rating input').eq(0).prop('checked', false);
    	  $('.star-rating input').eq(1).prop('checked', false);
    	  $('.star-rating input').eq(2).prop('checked', true);
    	  $('.star-rating input').eq(3).prop('checked', true);
    	  $('.star-rating input').eq(4).prop('checked', true);
    	} else if (star == 2) {
    	  // 별점이 2점인 경우 3개의 별을 회색으로, 나머지 2개를 노란색으로 표시
    	  $('.star-rating input').eq(0).prop('checked', false);
    	  $('.star-rating input').eq(1).prop('checked', false);
    	  $('.star-rating input').eq(2).prop('checked', false);
    	  $('.star-rating input').eq(3).prop('checked', true);
    	  $('.star-rating input').eq(4).prop('checked', true);
    	} else if (star == 1) {
    	  // 별점이 1점인 경우 4개의 별을 회색으로, 나머지 1개를 노란색으로 표시
    	  $('.star-rating input').eq(0).prop('checked', false);
    	  $('.star-rating input').eq(1).prop('checked', false);
    	  $('.star-rating input').eq(2).prop('checked', false);
    	  $('.star-rating input').eq(3).prop('checked', false);
    	  $('.star-rating input').eq(4).prop('checked', true);
    	} else if (star ==null){
    		// 별점이 없으면 모두 다 false 로 바꿔줘 
    	  $('.star-rating input').eq(0).prop('checked', false);
       	  $('.star-rating input').eq(1).prop('checked', false);
       	  $('.star-rating input').eq(2).prop('checked', false);
       	  $('.star-rating input').eq(3).prop('checked', false);
       	  $('.star-rating input').eq(4).prop('checked', false);
    	}
     
     $.ajax ({
         url : '${pageContext.request.contextPath }/movie/starAdd.do',
         type : "post",
         data : {"userId" : "${sessionScope.loginId}" ,"movieId" : movieId , "value" : "inputValue"},
         
        success : function(result) {
        }
     });

});
</script>

			<!-- 		  예고편  -->
			<span>
				<button class="button button1" onclick="Trailer(${movieId})">예고편보기</button>
			</span>
		</div>
	</div>

	<script>
function Trailer(movieId) {
  var url = '${pageContext.request.contextPath}/movie/video.do?movieId=' + movieId;
  window.location.href = url;
}
</script>

<!-- 코멘트 자리@ -->
<div class="tmp_bottom">
<div class="left" ><a href = "${pageContext.request.contextPath}/comments/write.do">코멘트쓰러가기</a></div>
<div class="right"><a href = "${pageContext.request.contextPath}/comments/allList.do">다른코멘트보러가기</a></div>
</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>