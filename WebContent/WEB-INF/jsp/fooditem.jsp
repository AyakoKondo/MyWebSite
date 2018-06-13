<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="beans.ItemDataBeans"%>
<%@page import=" java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ja">
<head>
<jsp:include page="/baselayout/head.html" />
	<title>商品詳細</title>
   <%
   ItemDataBeans item = (ItemDataBeans) request.getAttribute("item");
  	ArrayList<ItemDataBeans> combiList = (ArrayList<ItemDataBeans>) request.getAttribute("combiList");
  %>
</head>


<body class="text-center">
<jsp:include page="/baselayout/header.jsp" />

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
       <div class="col-sm-2"></div>
        <div class="col-sm-3">
          <div class="itemcard itemdetail">
            <img class="card-img-top mx-auto" src="<%="Materialize/item/" + item.getFileName()%>" alt="おつまみ">
         </div>
       </div>
          <div class="col-sm-6 text-left">
          <h4><%=item.getName() %></h4>
          <br>
          <h4><%=item.getPrice() %>円</h4>
          <p><%=item.getDetail() %></p>
        </div>
        </div>
      </div>
    


  <div class="container">
    <div class="album py-5">
      <div class="container-origin">
        <h5><i class="fas fa-beer fa-fw"></i>おすすめのみもの</h5>
        <br>
        <div class="row">
       		    <%
					for (ItemDataBeans idb : combiList) {
				%>
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <a href="Item?item_id=<%=idb.getId()%>&item_category_id=<%=idb.getItemCategoryId()%>"> <img class="card-img-top" src="<%="Materialize/item/" + idb.getFileName()%>" alt="Card image cap"></a>
              <div class="card-body">
                <p class="card-text"><%=idb.getName() %></p>
                <p class="card-text"><%=idb.getPrice() %>円</p>
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
           <%
			}
		   %>
          
                </div>
              </div>
            </div>
          </div>


      </main>
      <br><br><br>
      <jsp:include page="/baselayout/footer.jsp" />


    </body>
    </html>