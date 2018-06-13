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
	<title>商品削除（管理者用）</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
  <link href="https://use.fontawesome.com/releases/v5.0.6/css/all.css" rel="stylesheet">	
  <link href="Materialize/css/sticky-footer.css" rel="stylesheet">
  <link href="Materialize/css/style.css" rel="stylesheet">
</head>


<body class="bg-light">

  <div class="container-admin automargin">

    <div class="py-5 text-center">
      <h2>商品削除確認（管理者用）</h2>
    　<h3>${idb.name}を本当に削除しますか？</h3>
  </div>

    <div class="container automargin">
        <div class="row">
          <div class="center-align">
            <a href="Adminpage"><button class="btn btn-primary btn-lg  button-rc" type="submit" name="confirm_button" value="cancel">　やめる　</button></a>
          </div>
          <div class="center-align">
          <form action = "ItemDelete" method ="post">
          
            <button class="btn btn-danger btn-lg" type="submit" name="confirm_button" value="delete">　削除する　</button>
            <input type="hidden" name ="id" value = "${idb.id}">
           </form>
          </div>
        </div>
        </div>
    
    

  <br>
  <br>
  <footer class="footer">
    <div class="container">
      <span class="text-muted">Made by ayako</span>
    </div> 
  </footer>


    <!-- Bootstrap core JavaScript
      ================================================== -->
      <!-- Placed at the end of the document so the pages load faster -->
      <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
      <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
      <script src="../../../../assets/js/vendor/popper.min.js"></script>
      <script src="../../../../dist/js/bootstrap.min.js"></script>
      <script src="../../../../assets/js/vendor/holder.min.js"></script>
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

