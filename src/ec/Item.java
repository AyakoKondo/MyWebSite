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
 * Servlet implementation class Item
 */
@WebServlet("/Item")
public class Item extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	/**
	 * @商品詳細画面
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		
		try {
			//選択された商品のIDを型変換し利用
			int id = Integer.parseInt(request.getParameter("item_id"));
			int itemCategoryId = Integer.parseInt(request.getParameter("item_category_id"));
			
			ItemDAO.getInstance();
			//対象のアイテム情報を取得
			ItemDataBeans item = ItemDAO.getItemByItemID(id);
			ArrayList<ItemDataBeans> combiList = ItemDAO.getCombiList(itemCategoryId, 4);
 			//リクエストパラメーターにセット
			request.setAttribute("item", item);
			request.setAttribute("combiList", combiList);
			
			request.getRequestDispatcher(EcHelper.ITEM_PAGE).forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
}
