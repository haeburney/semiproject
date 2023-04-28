package wish;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;
import detail.DetailVo;

public class wishDao {

		private DBConnect dbconn;
		public wishDao() {		
			dbconn = DBConnect.getInstance();
		}
		
		//찜하면 0으로 추가 
		public void insert (wishVo vo) {
			Connection conn = dbconn.conn();
			String sql = "insert into wish values(seq_wish_num.nextVal,?, ?, 0)";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, vo.getUserId());
				pstmt.setInt(2, vo.getMovieNum());
				
				pstmt.executeUpdate();
		}catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}
		
		
		//찜 취소 하면 
		public void delwish (String userId) {
			
			Connection conn = dbconn.conn();
			
			String sql = "delete from wish where userid=?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, userId);

				pstmt.executeUpdate();

			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
		}
		
		//아이디로 찜 목록 뿌리기 
		public ArrayList<wishVo> WishList(String userId){
			Connection conn = dbconn.conn();
			ArrayList<wishVo> list = new ArrayList<>();
			String sql = "select * from wish where wish=0 and userid=? order by num desc";
			
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1,userId);
				
				ResultSet rs =pstmt.executeQuery();
				
				while(rs.next()) {
					
					list.add(new wishVo(rs.getInt(1),rs.getString(2), rs.getInt(3),rs.getString(4)));
				}
			} catch (SQLException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			} finally {
				try {
					conn.close();
				} catch (SQLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			return list;
		}

}
