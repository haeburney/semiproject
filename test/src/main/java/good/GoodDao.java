package good;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import conn.DBConnect;

public class GoodDao {
	private DBConnect dbconn;
		
	public GoodDao() {
		dbconn = DBConnect.getInstance();
	}
	
	//좋아요 추가
	public void insert(GoodVo vo) {
		Connection conn = dbconn.conn();
		String sql = "insert into good values(?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getNum());
			pstmt.setString(2, vo.getUserId());

			int num = pstmt.executeUpdate();
			System.out.println(num + " 줄이 추가되었다");
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
	
	//삭제(id 기준)
	public void delete(int num) {
		Connection conn = dbconn.conn();
		String sql = "delete from good where userid=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, num);
			int x = pstmt.executeUpdate();
			System.out.println(x + " 줄이 삭제됨");
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
	
			
	//삭제(글 번호 기준)
	public void delete2(String userId) {
		Connection conn = dbconn.conn();
		String sql = "delete from good where num=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			int num = pstmt.executeUpdate();
			System.out.println(num + " 줄이 삭제됨");
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
	
}
