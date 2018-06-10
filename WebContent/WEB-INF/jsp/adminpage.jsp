<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.ItemDataBeans" %>
<%@ page import="java.util.Arrays"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dao.ItemDAO"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>商品一覧（管理者用）</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">


</head>


<body class="bg-light">

  <div class="container-admin automargin">

    <div class="py-5 text-center none">
      <h2>商品一覧（管理者用）<a href="ItemRegist"><button class="btn btn-primary" type="submit">新規商品登録</button></a></h2>
    </div>

    <form>
      <div class="form-row">
        <div class="form-group col-md-6">
          <label for="searchword">商品名で検索</label>
          <input type="text" class="form-control" id="searchword" placeholder="キーワードを入力">
        </div>
        <div class="form-group col-md-6">
          <p>　商品の種類</p>
          　<label class="checkbox-inline"><input type="checkbox" value="1" name="item_category_id"> エール系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="2" name="item_category_id"> ラガー系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="3" name="item_category_id"> 黒ビール系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="4" name="item_category_id"> ビールその他</label>
          <br>
          　<label class="checkbox-inline"><input type="checkbox" value="5" name="item_category_id"> 赤</label>
          　<label class="checkbox-inline"><input type="checkbox" value="6" name="item_category_id"> 白</label>
          　<label class="checkbox-inline"><input type="checkbox" value="7" name="item_category_id"> ロゼ</label>
          　<label class="checkbox-inline"><input type="checkbox" value="8" name="item_category_id"> スパークリング</label>
          　<label class="checkbox-inline"><input type="checkbox" value="9" name="item_category_id"> ワインその他</label>
          <br>
          　<label class="checkbox-inline"><input type="checkbox" value="10" name="item_category_id"> 日本酒</label>
          　<label class="checkbox-inline"><input type="checkbox" value="11" name="item_category_id"> 果実酒</label>
          　<label class="checkbox-inline"><input type="checkbox" value="12" name="item_category_id"> 焼酎</label>
          　<label class="checkbox-inline"><input type="checkbox" value="13" name="item_category_id"> 飲み物その他</label>
          <br>
          　<label class="checkbox-inline"><input type="checkbox" value="14" name="item_category_id"> 肉系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="15" name="item_category_id"> 魚介系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="16" name="item_category_id"> 野菜系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="17" name="item_category_id"> チーズ系</label>
          　<label class="checkbox-inline"><input type="checkbox" value="18" name="item_category_id"> 食べ物その他</label>
        </div>
      </div>
      <div class="form-group row">
        <label for="registdate" class="col-sm-1 col-form-label">登録日</label>
        <div class="col-sm-3">
          <input type="date" class="form-control" id="startdate" placeholder="">
        </div>
        <div class="col-xs-1">
        ～</div>
        <div class="col-sm-3">
          <input type="date" class="form-control" id="fdate" placeholder="">
        </div>
        <div class="col-sm-3 automargin">
          <button class="btn btn-success btn-block" type="submit">検索</button>
        </div>
      </div>
    </form>
  </div>

  <hr class="mb-4 container-admin">

<div class="container-admin automargin">
  <div class="my-3 p-3 bg-white rounded box-shadow">
    <table class="table">
      <thead>
        <tr>
          <th scope="col">登録日時</th>
          <th scope="col">商品名</th>
          <th scope="col">種類</th>
          <th scope="col">価格</th>
          <th scope="col"></th>
        </tr>
      </thead>
      <tbody>
      <c:forEach var="idb" items="${itemList}">
        <tr>
          <td>${idb.createDate}</td>
          <td>${idb.name}</td>
          <td>${idb.itemCategoryName}</td>
          <td>${idb.price}円</td>
          <td><a href="itemdetail.html"><button type="button" class="btn btn-secondary button-regist">詳細</button></a>
          	<a href="itemupdate.html"><button type="button" class="btn btn-primary button-regist">更新</button></a>
            <a href="ItemDelete"><button type="button" class="btn btn-danger">削除</button></a></td>
          </tr>
         </c:forEach>
        </tbody>
      </table>
    </div>
</div>



    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>

      <script>
      // Example starter JavaScript for disabling form submissions if there are invalid fields
      (function() {
        'use strict';

        window.addEventListener('load', function() {
          // Fetch all the forms we want to apply custom Bootstrap validation styles to
          var forms = document.getElementsByClassName('needs-validation');

          // Loop over them and prevent submission
          var validation = Array.prototype.filter.call(forms, function(form) {
            form.addEventListener('submit', function(event) {
              if (form.checkValidity() === false) {
                event.preventDefault();
                event.stopPropagation();
              }
              form.classList.add('was-validated');
            }, false);
          });
        }, false);
      })();
    </script>
  </body>
  </html>

