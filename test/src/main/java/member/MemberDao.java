package member;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import conn.DBConnect;

public class MemberDao {
	private DBConnect dbconn;

	public MemberDao() {
		dbconn = DBConnect.getInstance();
	}

	// 가입
	public void insert(MemberVo vo) {
		Connection conn = dbconn.conn();
		String sql = "insert into member values (?, ?, ?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getNickname());

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

	// 내정보보기
	public MemberVo select(String userId) {
		MemberVo vo = null;
		Connection conn = dbconn.conn();
		String sql = "select * from member where userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();

			if (rs.next()) {
				vo = new MemberVo(rs.getString(1), rs.getString(2), rs.getString(3));
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
		return vo;
	}

	// 내정보수정
	public void update(MemberVo vo) {
		Connection conn = dbconn.conn();
		String sql = "update member set  password=?, nickname=? where userid=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, vo.getUserId());
			pstmt.setString(2, vo.getPassword());
			pstmt.setString(3, vo.getNickname());

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

	// 탈퇴
	public void delete(String userId) {
		Connection conn = dbconn.conn();
		String sql = "delete from member where userid=?";
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

}
