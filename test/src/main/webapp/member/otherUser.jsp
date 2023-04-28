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

<link rel="stylesheet" href="mypageCss.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.4/jquery.min.js"></script>
<script>
	
    //heart 좋아요 클릭시! 
    $(function(){
    	let flag = ${flag};
    	console.log(flag);
    	
    	if(flag == true){
    		$(this).find('img').attr({
                'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
                 alt:"찜하기 완료"
                 
             });
    	} else {
    		$(this).find('i').removeClass('fas').addClass('far')
            $(this).find('img').attr({
               'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
//                텅빈하트
               alt:"찜하기"
    		});
    	}
    	
    	
        var $likeBtn =$('.icon.heart');
        
        let userId = "${sessionScope.userId}";
        let followedId = "${followedId}";      
			
            $likeBtn.click(function(){
            $likeBtn.toggleClass('active');

            if($likeBtn.hasClass('active')){          
                $(this).find('img').attr({
                   'src': 'https://cdn-icons-png.flaticon.com/512/803/803087.png',
                    alt:'찜하기 완료'
                    
                });
                console.log("팔로우");
              } else {
                $(this).find('i').removeClass('fas').addClass('far')
                $(this).find('img').attr({
                   'src': 'https://cdn-icons-png.flaticon.com/512/812/812327.png',
//                    텅빈하트
                   alt:"찜하기"
                
                })
                console.log("팔로취소");
              }
            
            $.ajax ({
            	url : '${pageContext.request.contextPath }/follow/add.do',
            	type : "post",
            	data : {"userId" : userId, "followedId" : followedId},
            	success : function(result) {
      
    
            	}
            });
         });
    });
    
     
</script>

</head>
<body id="pBody">
	<!-- 메뉴 상당바 출력 -->
	<%@include file="/submain/nav.jsp" %>
	
	${followedId }
	
	<div id="linesParent">
		<div id="lines">
		<!-- 한 줄 소개가 없다면 -->
		<c:if test="${empty vo.introLine }">
			<form name="addForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="addLine">내가 팔로우한 다른 유저가 본인 마이페이지에 적은 한 줄</div>
			</form>
		</c:if>
	
		<!-- 한 줄 소개가 있다면 -->
 		<c:if test="${not empty vo.introLine }"> 
			<form name="editForm" action="${pageContext.request.contextPath }/member/introLineadd.do?userId=${sessionScope.userId}" method="post">
				<div id="editLine">${vo.introLine }</div>
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
			
			<!-- 팔로워 추가 설정 이미지 -->
			<div class="right_area">
  			<a href="javascript:;" class="icon heart">
     		<img src="https://cdn-icons-png.flaticon.com/512/812/812327.png" alt="찜하기">
  			</a>
       		</div>
			
			</div>	
				<hr/>
					<div>
						찜목록
						<a href="#"><img class="plustImg" src="../image/plus.png"></a>
						<c:if test="${not empty detailImageList }">
							<c:forEach var="li" items="${detailImageList }">
								
								<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
							</c:forEach>
						</c:if>
					</div>
					<hr/>
					<div>
						별점목록
						<a href="#"><img class="plustImg" src="../image/plus.png"></a>
						<c:if test="${not empty starImageList }">
							<c:forEach var="li" items="${starImageList }">
								
								<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
							</c:forEach>
						</c:if>
					</div>
					<hr/>
					<div>
						코멘트목록
						<a href="#"><img class="plustImg" src="../image/plus.png"></a>
						
						<c:if test="${not empty commentsImageList }">
							<c:forEach var="li" items="${commentsImageList }">
								
								<a href="${pageContext.request.contextPath }/movie/detail.do?id=${li.id }"><img src="${li.poster_path }"></a>
							</c:forEach>
						</c:if>
					</div>
			</div>
		</div>
</body>
</html>