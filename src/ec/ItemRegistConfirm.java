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
 * 商品登録確認画面
 */
@WebServlet("/ItemRegistConfirm")
public class ItemRegistConfirm extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	/**
	 * 商品登録 バリデーションエラーがある場合新規登録画面に遷移
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		/* 文字化け対策 */
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

			String validationMessage = "";

			// 入力されているパスワードが確認用と等しいか
//		//	if (!inputPassword.equals(inputConfirmPassword)) {
//			//	validationMessage += "入力されているパスワードと確認用パスワードが違います<br>";
//			}
//			// priceの入力規則チェック 数字のみ入力可能   あとで追加
//			if (!EcHelper.isNum(idb.getPrice())) {
//				validationMessage += "数字のみ入力できます。";
//			}
			//商品名に空欄がないか
			if(inputName.equals("")) {
			validationMessage +="商品名を入力して下さい";
			}
			// バリデーションエラーメッセージがないなら確認画面へ
			
			
			if (validationMessage.length() == 0) {
				request.setAttribute("idb", idb);
				request.getRequestDispatcher(EcHelper.ITEM_REGIST_CONFIRM_PAGE).forward(request, response);
			} else {
				session.setAttribute("idb", idb);
				session.setAttribute("validationMessage", validationMessage);
				response.sendRedirect("ItemRegist");
			}

		} catch (Exception e) {
			e.printStackTrace();
			session.setAttribute("errorMessage", e.toString());
			response.sendRedirect("Error");
		}
	}
}


