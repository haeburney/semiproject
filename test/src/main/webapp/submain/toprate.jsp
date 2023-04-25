<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
<link rel="stylesheet" href="/submain/reset.css">

<title>서브메인(평점순)</title>

<style type="text/css">

/* 아이콘 색상 변경코드 */
.navbar-dark .bi.bi-person-circle {
    color: white !important;
 }
/* */
  .navbar-dark .bi-film {
    color: white;
  }
.navbar-dark .bi-search{
    color: white;
}

input::-ms-clear,
input::-ms-reveal{
	display:none;width:0;height:0;
}
input::-webkit-search-decoration,
input::-webkit-search-cancel-button,
input::-webkit-search-results-button,
input::-webkit-search-results-decoration{
	display:none;
}



/*돋보기이미지 오른쪽 설정*/
.search_icon{
  padding-right: 20px;
}

/*돋보기이미지 설정*/
.search_btn{
  background: none;
  background-image: url('../img/search.png');
  width: 25px;
  border: none;
  background-repeat: no-repeat;
  background-position: center;
  position: relative;
  left: -37px;
}

/* 필름, 내정보 배경이미지만 보이게 텍스트 숨김 */
.hide_text{
  text-indent: -9999px;
}

/* 필름이미지 설정 */
.nav_film{
  background-image: url('../img/movie_film.png');
  background-size: contain;
  background-position: center;
  background-repeat: no-repeat;
  width: 30px;
  margin-right: 10px;
}

/* 내정보이미지 설정 */
.my_info{
  background-image: url('../img/my_info.png');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  width: 50px;
}

/* 로그인이미지 설정 */
.login{
  background-image: url('../img/login.png');
  background-size: cover;
  background-position: center;
  background-repeat: no-repeat;
  width: 50px;
}

</style>
</head>
<body>

<!-- 네비바 -->
<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo03" aria-controls="navbarTogglerDemo03" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <a class="navbar-brand" href="#">조각별</a>
    
    <div class="collapse navbar-collapse" id="navbarTogglerDemo03">
    
    <form class="d-flex ms-auto">
        <input class="form-control me-2 search_icon" type="search" placeholder="작품, 배우로 검색" aria-label="Search">
        <button class="search_btn hide_text" type="submit">Search</button>
    </form>
     
      <ul class="navbar-nav ms-3 mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link nav_film hide_text" href="#">필름</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle my_info hide_text" href="#">내계정</a>
        </li>
        <li class="nav-item">
          <a class="nav-link login hide_text" href="#">로그인</a>
        </li>
      </ul>
    </div>
  </div>
</nav>


<p>평점순</p>
<c:forEach var="vo" items="${topratelist }">
<a href="${pageContext.request.contextPath }/movie/detail.do?id=${vo.id }">
<img src="https://image.tmdb.org/t/p/w500${vo.poster_path}">
</a>
<h4>${vo.title }</h4>
</c:forEach>
</body>
</html>