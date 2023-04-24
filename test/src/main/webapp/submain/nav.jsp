<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <link rel="stylesheet" href="/submain/reset.css">
<link rel="stylesheet" href="/submain/submain.css">
<title>Insert title here</title>
</head>
<body>
<!-- navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container-fluid nav_layout">
        <a class="navbar-brand" href="/">Logo</a>
        <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class="navbar-toggler-icon"></span>
        </button>
        <div class="collapse navbar-collapse custom_nav_layout" id="navbarSupportedContent">
          <form class="d-flex">
            <input id="search" class="form-control me-2 search_icon" placeholder="작품, 배우로 검색" aria-label="Search">
            <button class="search_btn hide_text" type="submit">Search</button>
          </form>
          <ul class="navbar-nav mb-2 mb-lg-0">
            <li class="nav-item">
              <a class="nav-link nav_film hide_text" aria-current="page" href="#">필름</a>
            </li>
            <li class="nav-item dropdown">
              <a class="nav-link dropdown-toggle my_info hide_text" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                내 계정
              </a>
              <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                <li><a class="dropdown-item" href="#">menu</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">menu</a></li>
                <li><hr class="dropdown-divider"></li>
                <li><a class="dropdown-item" href="#">menu</a></li>
              </ul>
            </li>
          </ul>
      </div>
    </div>
  </nav>
</body>
</html>