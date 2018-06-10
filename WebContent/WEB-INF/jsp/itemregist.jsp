<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.ItemDataBeans" %>

<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>商品登録（管理者用）</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">
  <%
	String validationMessage = (String) request.getAttribute("validationMessage");
	ItemDataBeans idb = (ItemDataBeans)request.getAttribute("idb");
%>
</head>


<body class="bg-light">

  <div class="container-admin automargin">

    <div class="py-5 text-center">
      <h2>商品登録（管理者用）</h2>
    </div>
    
    <div class="col-md-8 userconfirm">
      <form class="needs-validation" action = "ItemRegistConfirm" method="post">
       <div class="mb-3">
        <label class="radio-inline"><input type="radio" name="category_id" value = "1"> 飲み物</label>
        　<label class="radio-inline"><input type="radio" name="category_id" value = "2"> 食べ物</label>
      </div>

      <div class="mb-3">
        <label for="itemname">商品名</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" value="" required>
        <div class="invalid-feedback">
          商品名を入力してください。
        </div>
      </div>

      <div class="mb-3">
        <i>商品の種類を選択　</i>
        <select class="selectpicker" name="item_category_id">

          <optgroup label="ビール">
            <option value="1">エール系</option>
            <option value="2">ラガー系</option>
            <option value="3">黒ビール系</option>
            <option value="4">ビールその他</option>
          </optgroup>
          <optgroup label="ワイン">
            <option value="5">赤</option>
            <option value="6">白</option>
            <option value="7">ロゼ</option>
            <option value="8">スパークリング</option>
            <option value="9">ワインその他</option>
          </optgroup>
          <optgroup label="その他の飲み物">
            <option value="10">日本酒</option>
            <option value="11">果実酒</option>
            <option value="12">焼酎</option>
            <option value="13">飲み物その他</option>
          </optgroup>
          <optgroup label="おつまみ">
            <option value="14">肉系</option>
            <option value="15">魚介系</option>
            <option value="16">野菜系</option>
            <option value="17">チーズ系</option>
            <option value="18">おつまみその他</option>
          </optgroup>
        </select>
      </div>

      <div class="mb-3">
        <p>組み合わせ</p>
        <label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="1"> エール系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="2"> ラガー系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="3"> 黒ビール系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="4"> ビールその他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="5"> 赤</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="6"> 白</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="7"> ロゼ</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="8"> スパークリング</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="9"> ワインその他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="10" > 日本酒</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="11"> 果実酒</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="12"> 焼酎</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="13"> 飲み物その他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="14" > 肉系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="15"> 魚介系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="16"> 野菜系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="17"> チーズ系</label>
        　<label class="checkbox-inline"><input type="checkbox" name="set_category_id" value="18"> おつまみその他</label>
      </div>

      <div class="row">

        <div class="col-md-3 mb-3">
          <label for="alchol">アルコール度数</label>
          <input type="text" class="form-control" id="alchol" name="alchol" placeholder="">
        </div>
      </div>
      <div class="mb-3">
        <label for="price">価格</label>
        <input type="text" name="price" class="form-control" id="price" placeholder="" required>
        <div class="invalid-feedback">
          価格を入力してください。
        </div>
      </div>
      <div class="mb-3">
        <div class="form-group">
          <label for="itemdetail">商品詳細</label>
          <textarea class="form-control" id="detail" rows="3" name ="detail"></textarea>
        </div>
      </div>
      <div class="mb-3">
        <div class="form-group">
          <label for="itemdetail">商品画像（ファイル名）:
          </label>
           <input type="file" name="file_name" size="">
        </div>
      </div>
     
             


      <hr class="mb-4">
      <div class="container automargin">
      <button class="btn btn-info btn-lg" type="submit" name="action">　　入力確認画面へ進む　　</button>
    </div>
 </form>
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

    