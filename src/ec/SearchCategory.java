package ec;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class SearchResult
 */
@WebServlet("/SearchCategory")
public class SearchCategory extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	//1ページに表示する商品数
	final static int PAGE_MAX_ITEM_COUNT = 8;
   
	/**
	 * @カテゴリ別の商品検索結果
	 * カテゴリIDから検索
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		try {
			//選択された商品のカテゴリIDを利用
			int itemCategoryId = Integer.parseInt(request.getParameter("item_category_id"));
		
			int pageNum = Integer.parseInt(request.getParameter("page_num") == null ? "1" : request.getParameter("page_num"));
			
			// 新たに検索されたキーワードをセッションに格納する
			ArrayList<ItemDataBeans> searchCategoryList = ItemDAO.getInstance().getItemByItemCategoryID(itemCategoryId, pageNum, PAGE_MAX_ITEM_COUNT);
			
			// 検索ワードに対しての総ページ数を取得
			double itemCount = ItemDAO.getItemCount(itemCategoryId);
		    int pageMax = (int) Math.ceil(itemCount / PAGE_MAX_ITEM_COUNT);
		    
		  //総アイテム数
			request.setAttribute("itemCount", (int) itemCount);
			// 総ページ数
			request.setAttribute("pageMax", pageMax);
			// 表示ページ
			request.setAttribute("pageNum", pageNum);
			request.setAttribute("itemList", searchCategoryList);

			request.getRequestDispatcher(EcHelper.SEARCH_CATEGORY_PAGE).forward(request, response);
			
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO キーワード検索実装
		doGet(request, response);
	}

}
