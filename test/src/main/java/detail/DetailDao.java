package detail;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;

public class DetailDao {
	private DBConnect DBConn;
	public DetailDao() {
		DBConn = DBConnect.getInstance();
	}
	
	// 1. 추가
	public void insert(DetailVo vo) {
		Connection conn = DBConn.conn();
		String sql = "insert into detail values(?, ?, ?, ?, seq_detail.nextVal)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setInt(2, vo.getmovieNum());
			pstmt.setString(3, vo.getWish());
			pstmt.setInt(4, vo.getStar());
			
			int check = pstmt.executeUpdate();
			System.out.println(check + "줄 Detail insert");
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
	


	// 2. select
	// 2-1. 특정 아이디의 DetailVo 불러오기
	public ArrayList<DetailVo> starList(String userId){
		Connection conn = DBConn.conn();
		ArrayList<DetailVo> list = new ArrayList<>();
		String sql = "select * from detail where userId=? order by num desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new DetailVo(rs.getString(1), rs.getInt(2),rs.getString(3), rs.getInt(4), rs.getInt(5)));
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
	
	// 2-2. 특정 아이디의 찜한 DetailVo 불러오기
	public ArrayList<DetailVo> WishList(String userId){
		Connection conn = DBConn.conn();
		ArrayList<DetailVo> list = new ArrayList<>();
		String sql = "select * from detail where wish=0 and userid=? order by num desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1,userId);
			ResultSet rs =pstmt.executeQuery();
			
			while(rs.next()) {
				list.add(new DetailVo(rs.getString(1), rs.getInt(2),rs.getString(3), rs.getInt(4), rs.getInt(5)));
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
	
	// 2-3. 특정 영화의 평균 별점 불러오기
	public double avgStar (int movieNum) {
		double avg=0;
		Connection conn = DBConn.conn();
		String sql = "select avg(star) from detail where movieNum=? group by movieNum=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, movieNum);
			pstmt.setInt(2, movieNum);
			
			ResultSet rs = pstmt.executeQuery();
			if(rs.next()) {
				avg=rs.getInt(1);
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
		return avg;
	}

	// 3. update
	// 3-1. 특정 영화의 찜 수정하기
	public void updateWish(String userId, int movieId) {
		Connection conn = DBConn.conn();
		String sql = "update detail set wish=0 where userId=? and movieNum=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, userId);
			pstmt.setInt(2, movieId);
			
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
	
	public void delWish(DetailVo vo) {
		Connection conn = DBConn.conn();
		String sql = "update detail set wish=1 where userId=? and movieNum=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
		
			pstmt.setString(1, vo.getUserId());
			pstmt.setInt(2, vo.getmovieNum());
			
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

	// 3-2. 특정 영화의 별점 수정하기
	public void updateStar(DetailVo vo) {
		Connection conn = DBConn.conn();
		String sql = "update detail set star=? where userId=? and movieNum=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, vo.getStar());
			pstmt.setString(2, vo.getUserId());
			pstmt.setInt(3, vo.getmovieNum());
			
			int check = pstmt.executeUpdate();
			System.out.println(check + "줄 Detail 수정 update");
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
