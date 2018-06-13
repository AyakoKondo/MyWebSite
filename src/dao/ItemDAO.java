package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;

import base.DBManager;
import beans.ItemDataBeans;

public class ItemDAO {

	// インスタンスオブジェクトを返却させてコードの簡略化
	public static ItemDAO getInstance() {
		return new ItemDAO();
	}
	/**
	 * 商品の登録
	 * @param 
	 * @return <ItemDataBeans>
	 * @throws SQLException
	 */
	public int registItem(ItemDataBeans idb) throws SQLException{
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("INSERT INTO m_item "
					+ "(category_id,name,item_category_id,detail,alchol,price,file_name,create_date,update_date) "
					+ "VALUES(?,?,?,?,?,?,?,now(),now())", java.sql.Statement.RETURN_GENERATED_KEYS);
			
			st.setInt	(1, idb.getCategoryId());
			st.setString(2, idb.getName());
			st.setInt	(3, idb.getItemCategoryId());
			st.setString(4, idb.getDetail());
			st.setString(5, idb.getAlchol());
			st.setInt	(6, idb.getPrice());
			st.setString(7, idb.getFileName());
			st.executeUpdate();
			System.out.println("inserting item has been completed");
			
			ResultSet rs =  st.getGeneratedKeys();
			
			if(rs.next()) {
				return rs.getInt(1);
			}
			
			
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
		
		return -1;
	}
	
	/**
	 * 商品の削除
	 * @param id
	 * @return
	 * @throws SQLException
	 */
	public void deleteItem(int id) {
		 Connection conn = null;
	    try {
	        // データベースへ接続
	        conn = DBManager.getConnection();
	
	        // delete文を準備
	        String sql = "DELETE FROM m_item WHERE id = ?";
	
	         // deleteを実行	       
	        PreparedStatement pStmt = conn.prepareStatement(sql);
	       
	        pStmt.setInt(1, id);
	        
	        int result = pStmt.executeUpdate();
	        System.out.println(result);
	       
	    } catch (SQLException e) {
	        e.printStackTrace();
	        
	    } finally {
	        // データベース切断
	        if (conn != null) {
	            try {
	                conn.close();
	            } catch (SQLException e) {
	                e.printStackTrace();
	              
	            }
	        }
	    }
	}
	
	
	 
	 
	/**
	 * ランダムで引数指定分のItemDataBeansを取得
	 * @param limit 取得したいかず
	 * @return <ItemDataBeans>
	 * @throws SQLException
	 */
	public static ArrayList<ItemDataBeans> getRandItem(int limit) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item WHERE category_id = '1' ORDER BY RAND() LIMIT ? ");
			st.setInt(1, limit);

			ResultSet rs = st.executeQuery();

			ArrayList<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				item.setItemCategoryId(rs.getInt("item_category_id"));
				itemList.add(item);
			}
			System.out.println("getItem completed");
			return itemList;
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
	 * ランダムで引数指定分のItemDataBeansを取得 食べ物のみ
	 * @param limit 取得したいかず 
	 * @return <ItemDataBeans>
	 * @throws SQLException
	 */
	public static ArrayList<ItemDataBeans> getRandCombiItem(int limit) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item WHERE category_id = '2' ORDER BY RAND() LIMIT ? ");
			st.setInt(1, limit);

			ResultSet rs = st.executeQuery();

			ArrayList<ItemDataBeans> itemCombiList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans itemCombi = new ItemDataBeans();
				itemCombi.setId(rs.getInt("id"));
				itemCombi.setName(rs.getString("name"));
				itemCombi.setDetail(rs.getString("detail"));
				itemCombi.setPrice(rs.getInt("price"));
				itemCombi.setFileName(rs.getString("file_name"));
				itemCombi.setItemCategoryId(rs.getInt("item_category_id"));
				itemCombiList.add(itemCombi);
			}
			System.out.println("getItem completed");
			return itemCombiList;
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
	 * 商品IDによる商品検索
	 * @param itemId
	 * @return ItemDataBeans
	 * @throws SQLException
	 */
	public static ItemDataBeans getItemByItemID(int itemId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item WHERE id = ?");
			st.setInt(1, itemId);

			ResultSet rs = st.executeQuery();

			ItemDataBeans item = new ItemDataBeans();
			if (rs.next()) {
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				item.setAlchol(rs.getString("alchol"));
				item.setItemCategoryId(rs.getInt("item_category_id"));
			}

			System.out.println("searching item by itemID has been completed");

			return item;
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
	 * 商品IDによる組み合わせ商品(ランダム表示）商品詳細画面で表示
	 * @param itemCategoryId,limit
	 * @return ArrayList<ItemDataBeans>
	 * @throws SQLException
	 */
	public static ArrayList<ItemDataBeans> getCombiList(int itemCombiId,int limit) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		ArrayList<ItemDataBeans> combiList = new ArrayList<ItemDataBeans>();
	
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item JOIN t_set ON m_item.id = t_set.item_id WHERE t_set.set_category_id = ? ORDER BY RAND() LIMIT ? ");
			st.setInt(1, itemCombiId);
			st.setInt(2, limit);

			ResultSet rs = st.executeQuery();
			
			while (rs.next()) {
				int id = rs.getInt("id");
				String name = rs.getString("name");
				int price = rs.getInt("price");
				String fileName = rs.getString("file_name");
				int itemCategoryId = rs.getInt("item_category_id");
				
				ItemDataBeans idb = new ItemDataBeans(id,name,price,fileName,itemCategoryId);
				combiList.add(idb);
			}
		} catch (SQLException e) {
			e.printStackTrace();
            return null;
		} finally {
			if (con != null) {
			con.close();
			}
		}
		System.out.println("getAllItem completed");
		return combiList;
	}
	
	/**
	 * 商品カテゴリIDによる商品検索
	 * @param itemCategoryId
	 * @return ItemDataBeans
	 * @throws SQLException
	 */
	public ArrayList<ItemDataBeans> getItemByItemCategoryID(int itemCategoryId,int pageNum,int pageMaxItemCount) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			int startiItemNum = (pageNum - 1) * pageMaxItemCount;
			con = DBManager.getConnection();

			st = con.prepareStatement("SELECT * FROM m_item WHERE item_category_id = ? ORDER BY id ASC LIMIT?,?");
			st.setInt(1, itemCategoryId);
			st.setInt(2, startiItemNum);
			st.setInt(3, pageMaxItemCount);

			ResultSet rs = st.executeQuery();

			ArrayList<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();
			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				item.setAlchol(rs.getString("alchol"));
				item.setItemCategoryId(rs.getInt("item_category_id"));
				itemList.add(item);
			}

			System.out.println("searching item by itemCategoryID has been completed");

			return itemList;
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
	 * 商品検索
	 * @param searchWord
	 * @param pageNum
	 * @param pageMaxItemCount
	 * @return
	 * @throws SQLException
	 */
	public ArrayList<ItemDataBeans> getItemsByItemName(String searchWord, int pageNum, int pageMaxItemCount) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			int startiItemNum = (pageNum - 1) * pageMaxItemCount;
			con = DBManager.getConnection();

			if (searchWord.length() == 0) {
				// 全検索
				st = con.prepareStatement("SELECT * FROM m_item ORDER BY id ASC LIMIT ?,? ");
				st.setInt(1, startiItemNum);
				st.setInt(2, pageMaxItemCount);
			} else {
				// 商品名検索
				st = con.prepareStatement("SELECT * FROM m_item WHERE name like ?  ORDER BY id ASC LIMIT ?,? ");
				st.setString(1,"%" + searchWord + "%");
				st.setInt(2, startiItemNum);
				st.setInt(3, pageMaxItemCount);
			}

			ResultSet rs = st.executeQuery();
			ArrayList<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();

			while (rs.next()) {
				ItemDataBeans item = new ItemDataBeans();
				item.setId(rs.getInt("id"));
				item.setName(rs.getString("name"));
				item.setDetail(rs.getString("detail"));
				item.setPrice(rs.getInt("price"));
				item.setFileName(rs.getString("file_name"));
				itemList.add(item);
			}
			System.out.println("get Items by itemName has been completed");
			return itemList;
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
	 * 商品総数を取得
	 *
	 * @param searchWord
	 * @return
	 * @throws SQLException
	 */
/*	public static double getItemCount(String searchWord) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("select count(*) as cnt from m_item where name like ?");
			st.setString(1, "%" + searchWord + "%");
			ResultSet rs = st.executeQuery();
			double coung = 0.0;
			while (rs.next()) {
				coung = Double.parseDouble(rs.getString("cnt"));
			}
			return coung;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}*/
	/**
	 * 商品総数を取得(カテゴリ別）
	 *
	 * @param itemCategoryId
	 * @return
	 * @throws SQLException
	 */
	public static double getItemCount(int itemCategoryId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement("SELECT COUNT(*) AS cnt FROM m_item WHERE item_category_id= ?");
			st.setInt(1, itemCategoryId);
			ResultSet rs = st.executeQuery();
			double coung = 0.0;
			while (rs.next()) {
				coung = Double.parseDouble(rs.getString("cnt"));
			}
			return coung;
		} catch (Exception e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}


	/**
	 * 全ての商品情報を取得(一覧用）
	 *
	 * @param 
	 * @return itemDataBeans
	 * @throws SQLException
	 */
	
	public static ArrayList<ItemDataBeans> findAll() throws SQLException{
		Connection con = null;
		PreparedStatement st = null;
		ArrayList<ItemDataBeans> itemList = new ArrayList<ItemDataBeans>();
		
		try {
			//DBへ接続
			con = DBManager.getConnection();
			
			//SELECT文を準備
			st = con.prepareStatement( "SELECT * FROM m_item JOIN m_item_category ON m_item.item_category_id = m_item_category.id ORDER BY create_date DESC");
			
			//SELECT文を実行し、結果表を取得
			
            ResultSet rs = st.executeQuery();
            
            while(rs.next()) {        	
				int id = rs.getInt("id");
				String name = rs.getString("name");
				String itemCategoryName = rs.getString("m_item_category.name");
				int price = rs.getInt("price");
				Timestamp createDate = rs.getTimestamp("create_date");
				
				ItemDataBeans idb = new ItemDataBeans(id,name,itemCategoryName,price,createDate);
				
				itemList.add(idb);
            	}
			} catch (SQLException e) {
				e.printStackTrace();
	            return null;
			} finally {
			if (con != null) {
				con.close();
			}
		}
		System.out.println("getAllItem completed");
        return itemList;
	}
	
}