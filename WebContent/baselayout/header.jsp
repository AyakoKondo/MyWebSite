<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

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
          <a class="nav-link" href="Adminpage">管理者</a>
        </li>
      </ul>
    </div>
  </nav>