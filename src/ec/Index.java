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
 * スタートページ
 * Servlet implementation class Index
 */
@WebServlet("/Index")
public class Index extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		try {

			//商品情報を取得
			ArrayList<ItemDataBeans>itemList = ItemDAO.getRandItem(1);	
			int categoryId = itemList.get(0).getItemCategoryId();
			
			ArrayList<ItemDataBeans> combiList = ItemDAO.getCombiList(categoryId, 1);
			
			//リクエストスコープにセット
			request.setAttribute("itemList", itemList);
			request.setAttribute("combiList", combiList);

//			//セッションにsearchWordが入っていたら破棄する
//			String searchWord = (String)session.getAttribute("searchWord");
//			if(searchWord != null) {
//				session.removeAttribute("searchWord");
//			}

			request.getRequestDispatcher(EcHelper.TOP_PAGE).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
}
