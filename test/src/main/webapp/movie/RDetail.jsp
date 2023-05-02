<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">


<link rel="stylesheet" href="../submain/navcss.css">
<link rel="stylesheet" href="RDetailcss.css">
<!-- <link rel="stylesheer" href="addComment.css"> -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
 <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
<title>Insert title here</title>

<style>

	
	
</style>
</head>


<body class ="yess">	
<%@include file="/submain/nav.jsp"%>


<!-- 코멘트 팝업 -->
<div class="write_popup" style="display: none;">	  
	<div class="dimmed">
		<div class="addpopup">
			<div class="addtitle" id ="popupInput" style="color: black;" align="center">관람한 영화에 조각별을 남겨주세요.</div>
			<div class="content">
				<textarea class="commentpop initial_comment" cols="20" rows="5" maxlength="100" autofocus></textarea>
			</div>
			<div class="cmd">
				<label class="checkbox-wrap">스포일러인가요? 클릭! <input type="checkbox" name="spoiler_check2" value="">
				<img class="check-icon" src="../image/spoiler.png"></img></label>
				
				<input type="button" id="btnsave" class="popbutton" value="저장" onclick="save()">
				<input type="button" id="btncancel" class="popbutton" value="닫기" onclick="cancel()">
			</div>
		</div>
	</div>
</div> 



<!-- ajax 통신 때 필요한 값 임의로 선언, 히든처리 -->
<span id="movieNum" style="display: none;">${movieId}</span>

<div style="height: 100%; position: relative; margin-top: -5%;">

	<div>
  <img align="right" class="tmp_img" src="https://image.tmdb.org/t/p/original${file_path }">
	</div>
	
<span class="title">
<input type = "checkbox" id="popup">
${title}
<label for ="popup"><img src="${pageContext.request.contextPath }/image/info.png"></label>
<div>
<div>
<label for ="popup" class ="info">
제목 : ${title}<br/>
<br/>
장르 : ${name } <br/>
<br/>
런타임 : ${runtime}분<br/>
<br/>
요약 : ${overview}<br/>
<br/>
제작사 : ${production } <br/>
<br/>
개봉일 :  ${release_date} <br/>
 <br/></label>

</div>
<label for ="popup"></label>
</div>
</span>

</div>
<div>
<div style="width : 900px; margin-left: 150px;">
    <span class="tagline">${tagline}</span><br /></div>
    <span class="basicinfo">${name} · ${runtime}분</span><br/> 
    <span class="average">평점: ${vote_average}</span><br/>
</div>

<!-- heart 좋아요 클릭시!  -->

<div class ="check">


<!-- 하트이모지 -->

			<div class="right_area">
				<div class="icon heart"> 	
				<img class="emptyheart" src="${pageContext.request.contextPath}/image/heart.png"
					alt="텅빈하트"> 
						<span class="watch" > 보고싶어요 </span> </div>
								

	<!-- 		  예고편  -->
	<span>
	<img src="${pageContext.request.contextPath}/image/play.png" onclick="Trailer(${movieId})" style="position :relative; bottom:3px; margin-left:50px;">
	<span class ="watch">예고편 보러가기 |  </span>

	</span>


<script>
function Trailer(movieId) {
var url = '${pageContext.request.contextPath}/movie/video.do?movieId=' + movieId;
window.location.href = url;
}
</script>
 

			<!-- 별점 구현하기  -->
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

<script type="text/javascript">
//별점 평가 

//별점 클릭하면 데이터베이스에 들어갈 거임.. 
$('.star-rating input').click(function() {
	 
    var value = $(this).val();
    console.log(value);
    
    let userId = "${sessionScope.userId}"
    console.log(userId);
    
    let movieId = "${movieId}";
    console.log(movieId);
    
    $.ajax ({
    	
        url : '${pageContext.request.contextPath }/movie/starAdd.do',
        type : "GET",
        data : {"userId" : userId, "movieId" : movieId , "value" : value},
        
       success : function(result) {
    	   console.log("성공");
       }
    });
});

//시작되자마자 별점 보여줄껀데 
$(document).ready(function() {
	  var star = "${star}"; 
	  
	  $('.star-rating input:checked').prop('checked', false); 
	  
	  if (star >= 1) {
	    $('.star-rating input:eq(4)').prop('checked', true);
	  }
	  if (star >= 2) {
	    $('.star-rating input:eq(3)').prop('checked', true);
	  }
	  if (star >= 3) {
	    $('.star-rating input:eq(2)').prop('checked', true);
	  }
	  if (star >= 4) {
	    $('.star-rating input:eq(1)').prop('checked', true);
	  }
	  if (star >= 5) {
	    $('.star-rating input:eq(0)').prop('checked', true);
	  }
	});


</script>


	<!-- 댓글 보여주기 -->
	<div align="left">
		<span class="go_write">다른조각글 보러가기</span> 
		<div class="comment_area" onclick="document.querySelector('.write_popup').style.display = 'block'" >
			<textarea class="comment" cols="20" rows="2" maxlength="100" style="text-align: center; padding-top: 13px;" readonly>내 조각글 남기기</textarea>
		</div>

	</div>
	
	<script>
	// initCommentArea();
	
	function initCommentArea() { 
		$('.write_popup').hide();
	}
	
	jQuery.fn.center = function () {
	    this.css("position","absolute");
	    this.css("top", ( jQuery(window).height() - this.height() ) / 2+jQuery(window).scrollTop() + "px");
	    this.css("left", ( jQuery(window).width() - this.width() ) / 2+jQuery(window).scrollLeft() + "px");
	    return this;
	  }
	  
	jQuery(".write_popup").center();


</script>

<script> 
	function save(){
	
	  const textarea = document.querySelector('.commentpop.initial_comment');
	  const comment = textarea.value; 
	  console.log(comment)
	
	  const checkbox = document.querySelector('input[name="spoiler_check2"]');
	  const isSpoiler = checkbox.checked ? 0 : 1; 
		console.log(isSpoiler);
	
	
		 let userId = "${sessionScope.userId}";
			 console.log(userId);
		 let movieId = "${movieId}";
		 console.log(movieId);
	
	 
	$.ajax({
	url:"${pageContext.request.contextPath}/detail/addDetailPage.do",
	type : "GET" ,
	data : {"userId" : userId, "movieId" : movieId, "comment" : comment, "isSpolier" :isSpoiler},
	success : function(result) {
	    	   console.log("성공"); //작성 완료 후 작성한 내용을 버튼을 없애고 div 박스에 넣어서 보여주기 코드를 작성해야 합니다
	    	   //가영님께서 vo 에 담아서 어쩌고하는 방법이 있다고 하니 그렇게 해주
	    	   $('.write_popup').hide();
	    	   $('.comment').text(result);
	       }
	});
	};
	
	function cancel() {
		$('.write_popup').hide();
	}
	</script>
<script>
        	  
 $(document).ready(function() {
	 // 코멘트
	 var comments = "${comments}"; 
	 
	 if (comments == '') { // 코멘트가 없으면
		/* $('.go_wirte').show();
	 	$('.comment_area').hide(); */
	 } else {/*	// 코멘트가 있으면
		 $('.go_wirte').hide();
		 $('#comment').show(); */
		 //$('.comment').innerHTML += '<textarea>' + comments + '</textarea>';
		 
		 document.getElementById('comment_area').innerHTML += comments;
	 }
	 
        		  
    var $likeBtn = $('.icon.heart');  
    let movieId = "${movieId}";
    let userId = "${sessionScope.userId}";
    console.log(movieId);     	
    let isWished = "${flag}";
    console.log(isWished);
    	
    if (isWished && isWished === 'true') {
	    
	    $likeBtn.find('img').attr({
	      'src': '${pageContext.request.contextPath}/image/yellowheart.png',
	      alt:'빨간하트'
	    });
	  } 	
	  
    $likeBtn.click(function() {
        $likeBtn.toggleClass('active');
        console.log("토글버튼까지 생성");

        if ($likeBtn.hasClass('active')) {          
            $(this).find('img').attr({
                'src': '${pageContext.request.contextPath}/image/yellowheart.png',
                alt: '노란하트'
            });

            console.log("찜");
            
        } else {
            $(this).find('i').removeClass('fas').addClass('far');
            $(this).find('img').attr({
                'src': '${pageContext.request.contextPath}/image/heart.png',
                alt: '텅빈하트'
            });
            console.log("찜 취소");
        }

        console.log("에이작스들어갈거임");
        $.ajax ({
        	        	
            url: '${pageContext.request.contextPath}/movie/wish.do',
            type: "GET",
            data: {"userId": userId, "movieId": movieId},
            
            success: function(result) {
                console.log("에이작스성공");
            }
        }); 

    });
}); 
 
 </script>

<script 
src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
crossorigin="anonymous"></script>
</body>
</html>