<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="beans.ItemDataBeans"%>
<%@page import=" java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<title>お酒とおつまみ</title>
 <jsp:include page="/baselayout/head.html" />
 <%
	ArrayList<ItemDataBeans> itemList = (ArrayList<ItemDataBeans>) request.getAttribute("itemList");
 	ArrayList<ItemDataBeans> itemCombiList = (ArrayList<ItemDataBeans>) request.getAttribute("itemCombiList");
%>
</head>


<body class="text-center">
 <jsp:include page="/baselayout/header.jsp" />

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
      			<%
					for (ItemDataBeans item : itemList) {
				%>
        <div class="col-sm">
          <div class="card " style="width: 18rem;">

            <a href="Item?item_id=<%=item.getId()%>"><img class="card-img-top mx-auto" src="<%="Materialize/item/" + item.getFileName()%>" alt="お酒"></a>
            <div class="card-body">
              <h5 class="card-title"><%=item.getName()%></h5>
              <p class="card-text"><%=item.getPrice()%>円</p>
            <%} %>
            </div>
          </div>
        </div>
        <div class="col-sm">
          <img src="Materialize/illust/kakeru.png" class="mx-auto kakeru">
        </div>
        <div class="col-sm">
          <div class="card" style="width: 18rem;">
          		<%
					for (ItemDataBeans itemCombi : itemCombiList) {
				%>
            <a href="FoodItem?item_id=<%=itemCombi.getId()%>"><img class="card-img-top mx-auto" src="<%="Materialize/item/" + itemCombi.getFileName()%>" alt="おつまみ"></a>
            <div class="card-body">
              <h5 class="card-title"><%=itemCombi.getName()%></h5>
              <p class="card-text"><%=itemCombi.getPrice()%>円</p>
              <%} %>
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
    	<jsp:include page="/baselayout/footer.jsp" />

  </body>
  </html>