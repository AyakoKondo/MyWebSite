<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="beans.ItemDataBeans"%>

<!DOCTYPE html>
<html lang="ja">
<head>
    <title>ビールから探す</title>
	<jsp:include page="/baselayout/head.html" />
</head>


<body class="text-center">
	<jsp:include page="/baselayout/header.jsp" />

<!--ビールから探すページ-->

	<div class="container">
		<div class="title-contents">
			<img src="Materialize/illust/beer.png">
		</div>
		<br>
		<label>ビールから検索</label>

		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search" placeholder="キーワードを入力" aria-label="Search">
			<button class="btn btn-outline-warning" type="submit">検索</button>
		</form>
	</div>
	<br>
	<div class="container">
		<label>ビールの種類から検索</label>
		<small>ざっくり4種類に分類しました。</small>
	</div>

<div class="beer-menu">
   <div class="container">
      <div class="row center">
         <div class="col-sm">
          <a href="SearchCategory?item_category_id = 1"><img src="Materialize/illust/ale.png"></a>
          </div>
          <div class="col-sm">
          <a href="SearchCategory?item_category_id = 2"><img src="Materialize/illust/lager.png"></a>
        </div>
          <div class="col-sm">
          <a href="SearchCategory?item_category_id = 3"><img src="Materialize/illust/black.png"></a>
        </div>
        <div class="col-sm">
          <a href="SearchCategory?item_category_id = 4"><img src="Materialize/illust/others.png"></a>
        </div>
      </div>
    </div>
 </div>


<jsp:include page="/baselayout/footer.jsp" />
</body>
</html>