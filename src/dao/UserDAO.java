package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import base.DBManager;
import beans.UserDataBeans;
import ec.EcHelper;

/**
 *
 * @author a
 *
 */
public class UserDAO {
	// インスタンスオブジェクトを返却させてコードの簡略化
	public static UserDAO getInstance() {
		return new UserDAO();
	}

	/**
	 * データの挿入処理を行う。現在時刻は挿入直前に生成
	 *
	 * @param user
	 *            対応したデータを保持しているJavaBeans
	 * @throws SQLException
	 *             呼び出し元にcatchさせるためにスロー
	 */
	public void insertUser(UserDataBeans udb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("INSERT INTO t_user(firstname,lastname,postcode,address,email,login_password,birth_date,tel_num,create_date,update_date) VALUES(?,?,?,?,?,?,?,?,now(),now())");
			st.setString(1, udb.getFirstname());
			st.setString(2, udb.getLastname());
			st.setString(3, udb.getPostcode());
			st.setString(4, udb.getAddress());
			st.setString(5, udb.getEmail());
			st.setString(6, EcHelper.getSha256(udb.getPassword()));
			st.setString(7, udb.getBirthDate());
			st.setString(8, udb.getTelNum());
			st.executeUpdate();
			System.out.println("inserting user has been completed");
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 * ユーザーIDを取得
	 *
	 * @param email
	 *            メールアドレス（ログインID）
	 * @param password
	 *            パスワード
	 * @return int ログインIDとパスワードが正しい場合対象のユーザーID 正しくない||登録されていない場合0
	 * @throws SQLException
	 *             呼び出し元にスロー
	 */
	public static int getUserId(String email, String password) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM t_user WHERE email = ?");
			st.setString(1, email);

			ResultSet rs = st.executeQuery();

			int userId = 0;
			while (rs.next()) {
				if (EcHelper.getSha256(password).equals(rs.getString("email"))) {
					userId = rs.getInt("id");
					System.out.println("login succeeded");
					break;
				}
			}

			System.out.println("searching userId by loginId has been completed");
			return userId;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 * ユーザーIDからユーザー情報を取得する
	 *
	 * @param useId
	 *            ユーザーID
	 * @return udbList 引数から受け取った値に対応するデータを格納する
	 * @throws SQLException
	 *             呼び出し元にcatchさせるためスロー
	 */
/*	public static UserDataBeans getUserDataBeansByUserId(int userId) throws SQLException {
		UserDataBeans udb = new UserDataBeans();
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("SELECT id,name, login_id, address FROM t_user WHERE id =" + userId);
			ResultSet rs = st.executeQuery();

			while (rs.next()) {
				udb.setId(rs.getInt("id"));
				udb.setName(rs.getString("name"));
				udb.setLoginId(rs.getString("login_id"));
				udb.setAddress(rs.getString("address"));
			}

			st.close();

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

		System.out.println("searching UserDataBeans by userId has been completed");
		return udb;
	}

	/**
	 * ユーザー情報の更新処理を行う。
	 *
	 * @param user
	 *            対応したデータを保持しているJavaBeans
	 * @throws SQLException
	 *             呼び出し元にcatchさせるためにスロー
	 */
/*	public static void updateUser(UserDataBeans udb) throws SQLException {
		// 更新された情報をセットされたJavaBeansのリスト
		UserDataBeans updatedUdb = new UserDataBeans();
		Connection con = null;
		PreparedStatement st = null;

		try {

			con = DBManager.getConnection();
			st = con.prepareStatement("UPDATE t_user SET name=?, login_id=?, address=? WHERE id=?;");
			st.setString(1, udb.getName());
			st.setString(2, udb.getLoginId());
			st.setString(3, udb.getAddress());
			st.setInt(4, udb.getId());
			st.executeUpdate();
			System.out.println("update has been completed");

			st = con.prepareStatement("SELECT name, login_id, address FROM t_user WHERE id=" + udb.getId());
			ResultSet rs = st.executeQuery();

			while (rs.next()) {

				updatedUdb.setName(rs.getString("name"));
				updatedUdb.setLoginId(rs.getString("login_id"));
				updatedUdb.setAddress(rs.getString("address"));
			}

			st.close();
			System.out.println("searching updated-UserDataBeans has been completed");

		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 * loginIdの重複チェック
	 *
	 * @param loginId
	 *            check対象のログインID
	 * @param userId
	 *            check対象から除外するuserID
	 * @return bool 重複している
	 * @throws SQLException
	 */
	public static boolean isOverlapLoginId(String email, int userId) throws SQLException {
		// 重複しているかどうか表す変数
		boolean isOverlap = false;
		Connection con = null;
		PreparedStatement st = null;

		try {
			con = DBManager.getConnection();
			// 入力されたlogin_idが存在するか調べる
			st = con.prepareStatement("SELECT email FROM t_user WHERE email = ? AND id != ?");
			st.setString(1, email);
			st.setInt(2, userId);
			ResultSet rs = st.executeQuery();

			System.out.println("searching loginId by inputLoginId has been completed");

			if (rs.next()) {
				isOverlap = true;
			}
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}

		System.out.println("overlap check has been completed");
		return isOverlap;
	}

}
