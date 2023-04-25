<!doctype html>
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.3/font/bootstrap-icons.css">
 
<style type="text/css">

 .navbar-dark .bi.bi-person-circle {
    color: white !important;
 }

  .navbar-dark .bi-film {
    color: white;
  }
.navbar-dark .bi-search{
    color: black;
}

.icon {
	margin-right: -50px;
}
</style>
  </head>
  
  <body>
      

    <nav class="navbar navbar-expand-lg navbar-dark" style="background-color: black;" aria-label="Fifth navbar example">
    <div class="container-fluid">
      <a class="navbar-brand" href="#"><img
						src="${pageContext.request.contextPath}/image/logo.png" width="75"
						height="64"></a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample05" aria-controls="navbarsExample05" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>

      <div class="collapse navbar-collapse justify-content-end" id="navbarsExample05">
    
<!--     검색하기 -->

  <form role="search">
          <input class="form-control" type="search" placeholder="Search" aria-label="Search">
          </form>&nbsp&nbsp
         <span class = icon></span> <a href=""><i class="bi bi-search fs-3"></i></a></span>&nbsp
         
          
       <ul class="navbar-nav mb-2 mb-lg-0"> &nbsp&nbsp
                

          <li class="nav-item dropdown">
            <a class="nav-link dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false"><i class="bi bi-film fs-3"></i></a>
            <ul class="dropdown-menu">
              <li><a class="dropdown-item" href="#">Action</a></li>
              <li><a class="dropdown-item" href="#">Another action</a></li>
              <li><a class="dropdown-item" href="#">Something else here</a></li>
            </ul>
          </li>
          
      &nbsp<li class="nav-item">
          
            <a class="nav-link" href="#"><i class="bi bi-person-circle fs-3"></i></a>
          </li>
  
        </ul>
        
      </div>
    </div>
  </nav>
 
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
  </body>
</html>