<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>商品詳細</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">
</head>


<body class="text-center">

  <nav class="navbar fixed-top navbar-expand-lg navbar-light bg-light">
    <a class="navbar-brand" href="#"><img src="Materialize/illust/logo.png" width="125px" height="70px"></a>
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
          <a class="nav-link" href="#"><!--<i class="far fa-comments"></i>-->おすすめ</a>
        </li>

        <li class="nav-item">
          <a class="nav-link" href="#"><!--<i class="fas fa-user-plus fa-lg"></i>-->新規登録</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-sign-in-alt fa-lg fa-fw"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="far fa-user fa-lg fa-fw"></i></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-cart-arrow-down fa-lg fa-fw"></i></a>
        </li>


        <li class="nav-item">
          <a class="nav-link" href="#"><i class="fas fa-sign-out-alt fa-lg fa-fw"></i></a>
        </li>
      </ul>
    </div>
  </nav>

  <!--商品詳細-->
  <main role="main">

    <div class="jumbotron text-center">
      <div class="container cart-title">
        <form>
          <i class="itemdetail">商品詳細</i>                   
          <button type="button" class="btn btn-success text-right">買い物かごに追加<i class="fas fa-cart-plus fa-fw"></i></button>
        </form>        
      </div>
    </div>
  </div>
  <div class="container">
      <div class="row center">
        <div class="col-sm-6">
          <div class="itemcard itemdetail">
            <img class="card-img-top mx-auto" src="Materialize/item/img_01.jpg" alt="お酒">
         </div>
       </div>
          <div class="col-sm-6 text-left">
          <h4>商品名</h4>
          <p>商品詳細</p>
          <p>アルコール度数：</p>
          <h5>価格円</h5>
        </div>
        </div>
      </div>
    


  <div class="container">
    <div class="album py-5">
      <div class="container-origin">
        <h5><i class="fas fa-utensils fa-fw"></i>おすすめおつまみ</h5>
        <br>
        <div class="row">
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <img class="card-img-top" src="Materialize/item/img_01.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">商品名</p>
                <p class="card-text">価格円</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="automargin">
                    <form>                    
                      <button type="button" class="btn btn-success">買い物かごに追加<i class="fas fa-cart-plus fa-fw"></i></button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <img class="card-img-top" src="Materialize/item/img_01.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">商品名</p>
                <p class="card-text">価格円</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="automargin">
                    <form>                    
                      <button type="button" class="btn btn-success">買い物かごに追加<i class="fas fa-cart-plus fa-fw"></i></button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <img class="card-img-top" src="Materialize/item/img_01.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">商品名</p>
                <p class="card-text">価格円</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="automargin">
                    <form>                    
                      <button type="button" class="btn btn-success">買い物かごに追加<i class="fas fa-cart-plus fa-fw"></i></button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <img class="card-img-top" src="Materialize/item/img_01.jpg" alt="Card image cap">
              <div class="card-body">
                <p class="card-text">商品名</p>
                <p class="card-text">価格円</p>
                <div class="d-flex justify-content-between align-items-center">
                  <div class="automargin">
                    <form>                    
                      <button type="button" class="btn btn-success">買い物かごに追加<i class="fas fa-cart-plus fa-fw"></i></button>
                    </form>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>

      </main>
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