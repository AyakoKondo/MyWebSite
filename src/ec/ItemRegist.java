package ec;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import beans.ItemDataBeans;

/**
 * 商品新規登録画面
 * Servlet implementation class ItemRegist
 */
@WebServlet("/ItemRegist")
public class ItemRegist extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
 	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 		HttpSession session = request.getSession();

		//入力内容に誤りがある、確認画面で戻るボタン押し下げでアクセスしてきたときはセッションから入力情報を取得
		ItemDataBeans idb = session.getAttribute("idb") != null?(ItemDataBeans) EcHelper.cutSessionAttribute(session, "idb"):new ItemDataBeans();
		String validationMessage = (String) EcHelper.cutSessionAttribute(session, "validationMessage");

		request.setAttribute("idb", idb);
		request.setAttribute("validationMessage",validationMessage);

 		
		request.getRequestDispatcher(EcHelper.ITEM_REGIST_PAGE).forward(request, response);
	}
}
