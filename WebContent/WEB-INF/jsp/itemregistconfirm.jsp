<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="beans.ItemDataBeans" %>
<%@ page import="java.util.Arrays"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<title>商品登録確認（管理者用）</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">
  <%
	ItemDataBeans idb = (ItemDataBeans)request.getAttribute("idb");
  	
  %>
</head>


<body class="bg-light">

  <div class="container-admin automargin">

    <div class="py-5 text-center">
      <h2>商品登録確認（管理者用）</h2>
    </div>
    
    <div class="col-md-8 userconfirm">
      <form class="needs-validation" action = "ItemRegistResult" method="POST">
       <div class="mb-3">
        <label class="radio-inline"><input type="radio" name="category_id" value="1" <% if(idb.getCategoryId()==1){ out.print("checked");} %>> 飲み物</label>
        　<label class="radio-inline"><input type="radio" name="category_id" value="2" <% if(idb.getCategoryId()==2){ out.print("checked");} %>> 食べ物</label>
      </div>

      <div class="mb-3">
        <label for="itemname">商品名</label>
        <input type="text" class="form-control" id="name" name="name" placeholder="" value="<%=idb.getName() %>" readonly>
        <div class="invalid-feedback">
          商品名を入力してください。
        </div>
      </div>

      <div class="mb-3">
        <i>商品の種類を選択　</i>
        <select class="selectpicker" name="item_category_id">

          <optgroup label="ビール">
            <option value="1" <% if(idb.getItemCategoryId()==1){ out.print("selected");} %>>エール系</option>
            <option value="2" <% if(idb.getItemCategoryId()==2){ out.print("selected");} %>>ラガー系</option>
            <option value="3" <% if(idb.getItemCategoryId()==3){ out.print("selected");} %>>黒ビール系</option>
            <option value="4" <% if(idb.getItemCategoryId()==4){ out.print("selected");} %>>ビールその他</option>
          </optgroup>
          <optgroup label="ワイン">
            <option value="5" <% if(idb.getItemCategoryId()==5){ out.print("selected");} %>>赤</option>
            <option value="6" <% if(idb.getItemCategoryId()==6){ out.print("selected");} %>>白</option>
            <option value="7" <% if(idb.getItemCategoryId()==7){ out.print("selected");} %>>ロゼ</option>
            <option value="8" <% if(idb.getItemCategoryId()==8){ out.print("selected");} %>>スパークリング</option>
            <option value="9" <% if(idb.getItemCategoryId()==9){ out.print("selected");} %>>ワインその他</option>
          </optgroup>
          <optgroup label="その他の飲み物">
            <option value="10" <% if(idb.getItemCategoryId()==10){ out.print("selected");} %>>日本酒</option>
            <option value="11" <% if(idb.getItemCategoryId()==11){ out.print("selected");} %>>果実酒</option>
            <option value="12" <% if(idb.getItemCategoryId()==12){ out.print("selected");} %>>焼酎</option>
            <option value="13" <% if(idb.getItemCategoryId()==13){ out.print("selected");} %>>飲み物その他</option>
          </optgroup>
          <optgroup label="おつまみ">
            <option value="14" <% if(idb.getItemCategoryId()==14){ out.print("selected");} %>>肉系</option>
            <option value="15" <% if(idb.getItemCategoryId()==15){ out.print("selected");} %>>魚介系</option>
            <option value="16" <% if(idb.getItemCategoryId()==16){ out.print("selected");} %>> 野菜系</option>
            <option value="17" <% if(idb.getItemCategoryId()==17){ out.print("selected");} %>>チーズ系</option>
            <option value="18" <% if(idb.getItemCategoryId()==18){ out.print("selected");} %>>おつまみその他</option>
          </optgroup>
        </select>
      </div>

      <div class="mb-3">
      
        <p>組み合わせ</p>
        <label class="checkbox-inline"><input type="checkbox" value="1" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("1")){out.print("checked");} %>> エール系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="2" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("2")){out.print("checked");} %>> ラガー系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="3" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("3")){out.print("checked");} %>> 黒ビール系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="4" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("4")){out.print("checked");} %>> ビールその他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" value="5" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("5")){out.print("checked");} %>> 赤</label>
        　<label class="checkbox-inline"><input type="checkbox" value="6" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("6")){out.print("checked");} %>> 白</label>
        　<label class="checkbox-inline"><input type="checkbox" value="7" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("7")){out.print("checked");} %>> ロゼ</label>
        　<label class="checkbox-inline"><input type="checkbox" value="8" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("8")){out.print("checked");} %>> スパークリング</label>
        　<label class="checkbox-inline"><input type="checkbox" value="9" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("9")){out.print("checked");} %>> ワインその他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" value="10" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("10")){out.print("checked");} %>> 日本酒</label>
        　<label class="checkbox-inline"><input type="checkbox" value="11" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("11")){out.print("checked");} %>> 果実酒</label>
        　<label class="checkbox-inline"><input type="checkbox" value="12" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("12")){out.print("checked");} %>> 焼酎</label>
        　<label class="checkbox-inline"><input type="checkbox" value="13" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("13")){out.print("checked");} %>> 飲み物その他</label>
        <br>
        <label class="checkbox-inline"><input type="checkbox" value="14" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("14")){out.print("checked");} %>> 肉系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="15" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("15")){out.print("checked");} %>> 魚介系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="16" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("16")){out.print("checked");} %>> 野菜系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="17" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("17")){out.print("checked");} %>> チーズ系</label>
        　<label class="checkbox-inline"><input type="checkbox" value="18" name="set_category_id" <% if(Arrays.asList(idb.getCombiList()).contains("18")){out.print("checked");} %>> おつまみその他</label>
      </div>

      <div class="row">

        <div class="col-md-3 mb-3">
          <label for="alchol">アルコール度数</label>
          <input type="text" class="form-control" id="alchol" name="alchol" value="<%=idb.getAlchol()%>" readonly>
        </div>
      </div>
      <div class="mb-3">
        <label for="price">価格</label>
        <input type="text" name="price" class="form-control" id="price" placeholder="" value="<%=idb.getPrice()%>" readonly>
        <div class="invalid-feedback">
          価格を入力してください。
        </div>
      </div>
      <div class="mb-3">
        <div class="form-group">
          <label for="itemdetail">商品詳細</label>
          <textarea class="form-control" id="detail" rows="3" name="detail" readonly><%=idb.getDetail() %></textarea>
        </div>
      </div>
      <div class="mb-3">
        <div class="form-group">
          <label for="itemdetail">商品画像（ファイル名）:</label>
           <input type="text" name="file_name" readonly class="form-control-plaintext"  value="<%=idb.getFileName() %>">
        </div>
      </div>
     
             
      

      <hr class="mb-4">
      <p class="text-center">上記の内容で登録してよろしいですか？</p>
       <div class="container automargin">
        <div class="row">
          <div class="center-align">
            <button class="btn btn-primary btn-lg  button-rc" type="submit" name="confirm_button" value="cancel">　　修正　　</button>
          </div>
          <div class="center-align">
            <button class="btn btn-danger btn-lg" type="submit" name="confirm_button" value="regist">　　登録　　</button>
          </div>
        </div>
        </div>
 </form>
</div>
</div>





    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
          <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js" integrity="sha384-cs/chFZiN24E4KMATLdqdvsezGxaGsi4hLGOzlXwp5UZB1LY//20VyM2taTB4QvJ" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>

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

