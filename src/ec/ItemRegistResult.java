package ec;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import base.DBManager;
import beans.ItemDataBeans;
import dao.ItemDAO;

/**
 * Servlet implementation class ItemRegistResult
 */
@WebServlet("/ItemRegistResult")
public class ItemRegistResult extends HttpServlet {
	private static final long serialVersionUID = 1L;
  
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");

		HttpSession session = request.getSession();
		try {
			int inputCategoryId = Integer.parseInt(request.getParameter("category_id"));
			String inputName = request.getParameter("name");
			int inputItemCategoryId = Integer.parseInt(request.getParameter("item_category_id"));
			String inputDetail = request.getParameter("detail");
			String inputAlchol = request.getParameter("alchol");
			int inputPrice = Integer.parseInt(request.getParameter("price"));
			String inputFileName = request.getParameter("file_name");
			String[] inputCombiList = request.getParameterValues("set_category_id");
			if(null == inputCombiList) {
				inputCombiList = new String[0];
			}
			
			ItemDataBeans idb = new ItemDataBeans();
			
			idb.setCategoryId(inputCategoryId);
			idb.setName(inputName);
			idb.setItemCategoryId(inputItemCategoryId);
			idb.setDetail(inputDetail);
			idb.setAlchol(inputAlchol);
			idb.setPrice(inputPrice);
			idb.setFileName(inputFileName);
			
			idb.setCombiList(inputCombiList);
			
			// 登録が確定されたかどうか確認するための変数
			String confirmed = request.getParameter("confirm_button");

			switch (confirmed) {
			case "cancel":
				session.setAttribute("idb", idb);
				response.sendRedirect("ItemRegist");
				break;

			case "regist":
				int itemId = ItemDAO.getInstance().registItem(idb);
				
				//組み合わせをDBに登録
				for (String val : inputCombiList) {
					Connection con = null;
					PreparedStatement st = null;
					try {
						con = DBManager.getConnection();
						st = con.prepareStatement("INSERT INTO t_set (item_id,set_category_id)"
								+ "VALUES(?,?)");
						st.setInt(1, itemId);
						st.setString(2, val);
						st.executeUpdate();
						System.out.println("inserting setItem has been completed");
					} catch (SQLException e) {
						System.out.println(e.getMessage());
						throw new SQLException(e);
					} finally {
						if (con != null) {
							con.close();
						}
					}					
				}
								
				request.setAttribute("idb", idb);
				response.sendRedirect("Adminpage");
				break;
				
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
}
