<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>お酒とおつまみ</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">
</head>


<body class="text-center">

  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="index.html"><img src="Materialize/illust/logo.png" width="125px" height="70px"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse nav justify-content-end" id="navbarNavDropdown">
      <ul class="navbar-nav">
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="navbarDropdownMenuLink" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            検索する
          </a>
          <div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
            <a class="dropdown-item" href="beer-search.html">ビールから <i class="fas fa-beer"></i></a>
            <a class="dropdown-item" href="wine-search.html">ワインから <i class="fas fa-glass-martini"></i></a>
            <a class="dropdown-item" href="other-liquor.html">その他のお酒から</a>
            <a class="dropdown-item" href="food-search.html">おつまみから <i class="fas fa-utensils"></i></a>
          </div>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><!--<i class="far fa-comments"></i>-->おすすめ（工事中）</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="user-regist.html"><!--<i class="fas fa-user-plus fa-lg"></i>-->新規登録</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="signin.html"><i class="fas fa-sign-in-alt fa-lg fa-fw"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="user-info.html"><i class="far fa-user fa-lg fa-fw"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="cart.html"><i class="fas fa-cart-arrow-down fa-lg fa-fw"></i></a>
        </li>


        <li class="nav-item">
          <a class="nav-link" href="signin.html"><i class="fas fa-sign-out-alt fa-lg fa-fw"></i></a>
        </li>
         <li class="nav-item">
          <a class="nav-link" href="adminpage.html">管理者</a>
        </li>
      </ul>
    </div>
  </nav>

  <!--ようこそ文、おすすめ-->
  <div class="container-fluid">
    <div class="welcome">
      <br><br> 
      <h2>お酒とおつまみの組み合わせを探せるサイト</h2>
      <br>
      <h4>お買い物もできます！</h4>
    </div>
  </div>
  <br>
  <div class="container">
    <div class="row center">
      <div class=" col s12 light">
        <div class="recommend">
          <img src="Materialize/illust/osusume.png">
        </div>
      </div>
    </div>
  </div>
 <br>
    <div class="container">
      <div class="row center">
        <div class="col-sm">
          <div class="card" style="width: 18rem;">

            <a href="item.html"><img class="card-img-top mx-auto" src="Materialize/item/img_01.jpg" alt="お酒"></a>
            <div class="card-body">
              <h5 class="card-title">商品名</h5>
              <p class="card-text">価格円</p>
            </div>
          </div>
        </div>
        <div class="col-sm">
          <img src="Materialize/illust/kakeru.png" class="mx-auto kakeru">
        </div>
        <div class="col-sm">
          <div class="card" style="width: 18rem;">
            <a href="fooditem.html"><img class="card-img-top mx-auto" src="Materialize/item/retina_retina_retina_foodpic7181238.jpg" alt="おつまみ"></a>
            <div class="card-body">
              <h5 class="card-title">商品名</h5>
              <p class="card-text">価格円</p>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!--メニュー-->
    <br><br><br>
   <div class="menu">
   <div class="container">
      <div class="row center">
         <div class="col-sm">
          <a href="beer-search.html"><img src="Materialize/illust/beer.png"></a>
          </div>
          <div class="col-sm">
          <a href="wine-search.html"><img src="Materialize/illust/wine.png"></a>
        </div>
          <div class="col-sm">
          <a href="other-liquor.html"><img src="Materialize/illust/other.png"></a>
        </div>
        <div class="col-sm menuicon">
          <a href="food-search.html"><img src="Materialize/illust/food.png"></a>
        </div>
        <!--<div class="col-sm">
          <a href="#"><img src="Materialize/illust/set.png"></a>
          <p>工事中</p>
        </div>-->
      </div>
    </div>
 </div>
    <br><br><br>
    <footer class="footer">
      <div class="container">
        <span class="text-muted">Made by ayako</span>
      </div> 
    </footer>
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>


  </body>
  </html>