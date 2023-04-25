<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Bootstrap demo</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
<link rel="stylesheet" href="navcss.css">
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/5.1.3/css/bootstrap.min.css"
	integrity="sha512-qEan5nS02+Q5oN58dmG9N9Z4f4MT4yaNzFw/iRkRJzMA8+CDGt90E3l3J9Pm+Z8lCGYIda3Cw0V7dA8W8Kvztg=="
	crossorigin="anonymous" referrerpolicy="no-referrer" />



</head>

<body>


	<nav class="navbar navbar-expand-lg navbar-dark"
		style="background-color: black;" aria-label="Fifth navbar example">
		<div class="container-fluid">
			<img class="logo" src="${pageContext.request.contextPath}/image/pop.png">
			<div class="logo_name_area" align="left" ><span class="logo_name">조각별</span></div>


			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarsExample05"
				aria-controls="navbarsExample05" aria-expanded="false"
				aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>

			<div class="collapse navbar-collapse justify-content-end"
				id="navbarsExample05" align="right">

				<!--     검색하기 -->
				<div class="search_area" align="right">
					<input class="form-control iptfind" type="search"
						placeholder="작가, 감독으로 찾기" maxlength="8" aria-label="Search"> 

					<div class="icon_area">
						<div class="bi bi-search fs-3 icon"></div>
					</div>
				</div>
				

				<ul class="navbar-nav mb-2 mb-lg-0">


					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle" data-bs-toggle="dropdown"
						aria-expanded="false"><i class="bi bi-film fs-3"></i></a>
						<ul class="dropdown-menu">
							<li><a class="dropdown-item" href="#">Action</a></li>
							<li><a class="dropdown-item" href="#">Another action</a></li>
							<li><a class="dropdown-item" href="#">Something else
									here</a></li>
						</ul></li>

					<li class="nav-item"><a class="nav-link" href="#"><i
							class="bi bi-person-circle fs-3"></i></a></li>

					<label id="logoutLabel"> <input class="ipt_logout" role="switch"
						type="checkbox" id="logoutBtn" name="logoutBtn"
						onclick="logoutBtn()" ></input>
					</label>

				</ul>

			</div>
		</div>
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
		crossorigin="anonymous"></script>
</body>
</html>