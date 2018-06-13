package ec;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemDelete
 */
@WebServlet("/ItemDelete")
public class ItemDelete extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public ItemDelete() {
        super();
        // TODO Auto-generated constructor stub
    }

	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		try {
		// URLからGETパラメータとしてIDを受け取る
				int id = Integer.parseInt(request.getParameter("id"));
				
				// 確認用：idをコンソールに出力
				System.out.println(id);
				
				// TODO  idを引数にして、idに紐づくユーザ情報を出力する
				
				ItemDataBeans idb;
				
					idb = ItemDAO.getItemByItemID(id);
				
				

				// TODO  ユーザ情報をリクエストスコープにセットしてjspにフォワード
				
				HttpSession session = request.getSession();
				session.setAttribute("idb", idb);

				RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/jsp/itemdelete.jsp");
				dispatcher.forward(request, response);
		} catch (SQLException e) {
			// TODO 自動生成された catch ブロック
			e.printStackTrace();
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int id = Integer.parseInt(request.getParameter("id"));
		
		ItemDataBeans idb = new ItemDataBeans();
		ItemDAO itemDao = new ItemDAO();
		itemDao.deleteItem(id);
		
		HttpSession session = request.getSession();
		session.setAttribute("idb", idb);
		
		
		// 商品一覧のサーブレットにリダイレクト
		response.sendRedirect("Adminpage");
	}

}
