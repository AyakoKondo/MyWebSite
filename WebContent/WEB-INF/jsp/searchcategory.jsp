<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="beans.ItemDataBeans"%>
<%@page import=" java.util.ArrayList"%>

<!DOCTYPE html>
<html lang="ja">
<head>
	<title>検索結果</title>
	 <jsp:include page="/baselayout/head.html" />
 <%
	ArrayList<ItemDataBeans> itemList = (ArrayList<ItemDataBeans>) request.getAttribute("itemList");
	int itemCategoryId = (int) request.getAttribute("itemCategoryId");
	int pageMax = (int) request.getAttribute("pageMax");
	int pageNum = (int) request.getAttribute("pageNum");
	int itemCount = (int) request.getAttribute("itemCount");
%>
</head>


<body class="text-center">
 <jsp:include page="/baselayout/header.jsp" />
  
  <!--検索結果-->
  <div class="container buyhistory">
    <h3>検索結果</h3>
    <p>検索結果：<%=itemCount %>件</p>
    <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="キーワードを入力" aria-label="Search">
      <button class="btn btn-outline-info" type="submit">検索</button>
    </form>
  </div>


  <div class="container">
    <div class="album py-5">
      <div class="container-origin">

        <div class="row">
        <%
					int i = 0;
					for (ItemDataBeans item : itemList) {
						i++;
				%>
          <div class="col-md-3">
            <div class="card mb-3 box-shadow">
              <a href="Item?item_id=<%=item.getId()%>&item_category_id=<%=item.getItemCategoryId%>"><img class="card-img-top" src="<%="Materialize/item/" + item.getFileName()%>" alt="Card image cap">
              <div class="card-body">
                <p class="card-text"><%=item.getName() %></p>
                <p class="card-text"><%=item.getPrice %>円</p>
                <div class="d-flex justify-content-between align-items-center">
                </div>
              </div>
            </div>
          </div>
          		<%
					if (i % 4 == 0) {
				%>
				</div>
         <div class="row">
            <%
					}
				%>
				<%
					}
				%>
            </div>
          </div>
        </div>
      </div>
  

  <div class="container automargin">
    <div class="btn-toolbar" role="toolbar" aria-label="Toolbar with button groups">
      <div class="btn-group mr-2" role="group" aria-label="First group">
        <button type="button" class="btn btn-info"><i class="fas fa-angle-left"></i></button>
        <button type="button" class="btn btn-secondary">1</button>
        <button type="button" class="btn btn-secondary">2</button>
        <button type="button" class="btn btn-secondary">3</button>
        <button type="button" class="btn btn-info"><i class="fas fa-angle-right"></i></button>
      </div>
    </div>
  </div>
  

</div>
<br><br><br>

<jsp:include page="/baselayout/footer.jsp" />
</body>
</html>