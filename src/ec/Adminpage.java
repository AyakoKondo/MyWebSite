package ec;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class Adminpage
 */
@WebServlet("/Adminpage")
public class Adminpage extends HttpServlet {
	private static final long serialVersionUID = 1L;
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		
		// TODO 未実装：ログインセッションがない場合、ログイン画面にリダイレクトさせる
		
		// 商品情報一覧を取得

		try {
			
				ArrayList<ItemDataBeans>itemList = ItemDAO.findAll();
				
				request.setAttribute("itemList", itemList);
				
				RequestDispatcher dispatcher = request.getRequestDispatcher(EcHelper.ADMIN_PAGE);
				dispatcher.forward(request, response);
		} catch (Exception e) {
			e.printStackTrace();
			//session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
