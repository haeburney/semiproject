package comments;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import conn.DBConnect;

public class CommentsDao {

	private DBConnect dbconn;

	public CommentsDao() {
		dbconn = DBConnect.getInstance();
	}

	/**
	 *  코멘트 남기기
	 * @param vo
	 */
	public void insert(CommentsVo vo) {
		Connection conn = dbconn.conn();
		String sql = "insert into comments(NUM, MOVIENUM, USERID, COMMENTS, W_DATE, RATE, SPOILER) values (seq_comments.nextVal, ?, ?, ?, sysdate, ?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setDouble(1, vo.getMovieNum());
			pstmt.setString(2, vo.getUserId());
			pstmt.setString(3, vo.getComments());
			pstmt.setDouble(4, vo.getRate());
			pstmt.setString(5, vo.getSpoiler());

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}

	/**
	 * 로그인한 계정이 남긴 전체 코멘트 리스트 보여주기
	 * @param userId
	 * @return
	 */
	public ArrayList<CommentsVo> showMyComments(String userId) {
		ArrayList<CommentsVo> commentsList = new ArrayList<CommentsVo>();
		CommentsVo vo = null;
		Connection conn = dbconn.conn();
		String sql = "select * from comments where userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, userId);
			ResultSet rs = pstmt.executeQuery();// select 실행
			if (rs.next()) {// 첫 줄로 이동하여 데이터 있는지 확인
				commentsList.add(new CommentsVo(rs.getDouble(1), rs.getDouble(2), rs.getString(3), rs.getString(4),
						rs.getDate(5), rs.getDouble(6), rs.getString(7)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return commentsList;
	}

	/**
	 *  특정 영화에 대한 모든 코멘트를 찜목록 저장 수(좋아요 수)를 기준으로 정렬하여 보여주기 (스포일러 제외, 1: 스포일러 아님, 0: 스포일러)
	 * @param userId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsByRate(double movieId) {
		ArrayList<CommentsVo> commentsList = new ArrayList<CommentsVo>();
		CommentsVo vo = null;
		Connection conn = dbconn.conn();
		String sql = "select * from comments where movieNum = ? and spoiler = 1  order by rate desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, movieId);
			ResultSet rs = pstmt.executeQuery();// select 실행
			if (rs.next()) {// 첫 줄로 이동하여 데이터 있는지 확인
				commentsList.add(new CommentsVo(rs.getDouble(1), rs.getDouble(2), rs.getString(3), rs.getString(4),
						rs.getDate(5), rs.getDouble(6), rs.getString(7)));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return commentsList;
	}
	
	/**
	 * 특정 영화에 대한 모든 코멘트를 날짜를 기준으로 정렬하여 보여주기 (스포일러 제외, 1: 스포일러 아님, 0: 스포일러)
	 * @param movieId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsByDate(double movieId) {
		
		ArrayList<CommentsVo> commentsList = new ArrayList<CommentsVo>();
		CommentsVo vo = null;
		Connection conn = dbconn.conn();
		
		String sql = "select * from comments where movieNum = ? and spoiler = 1 order by w_date desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, movieId);
			
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				commentsList.add(new CommentsVo(rs.getDouble(1), rs.getDouble(2), rs.getString(3), rs.getString(4),
						rs.getDate(5), rs.getDouble(6), rs.getString(7)));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return commentsList;
	}
	
	/**
	 * 특정 영화에 대한 스포일러가 있는 코멘트들만 날짜를 기준으로 정렬하여 보여주기 (스포일러 제외, 1: 스포일러 아님, 0: 스포일러)
	 * @param movieId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsBySpoiler(double movieId) {
		
		ArrayList<CommentsVo> commentsList = new ArrayList<CommentsVo>();
		CommentsVo vo = null;
		Connection conn = dbconn.conn();
		
		String sql = "select * from comments where movieNum = ? and spoiler = 0 order by w_date desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setDouble(1, movieId);
			
			ResultSet rs = pstmt.executeQuery();
			
			if (rs.next()) {
				commentsList.add(new CommentsVo(rs.getDouble(1), rs.getDouble(2), rs.getString(3), rs.getString(4),
						rs.getDate(5), rs.getDouble(6), rs.getString(7)));
			}
			
		} catch (SQLException e) {
			
			e.printStackTrace();
			
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
		return commentsList;
	}
	
	/**
	 * 내가 남긴 특정 영화에 대한 코멘트 수정 (spoiler 0: 스포일러 있음, 1: 스포일러 없음)
	 * @param vo
	 */
	public void update(CommentsVo vo) {
		Connection conn = dbconn.conn();
		String sql = "update comments set comments=? , spoiler = ? where userId=? and movieNum=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setString(1, vo.getComments());
			pstmt.setString(2, vo.getSpoiler());
			pstmt.setString(3, vo.getUserId());
			pstmt.setDouble(4, vo.getMovieNum());

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	/**
	 * 특정 영화에 대해 내가 작성한 코멘트 삭제
	 * @param vo
	 */
	public void delete(CommentsVo vo) {
		Connection conn = dbconn.conn();
		String sql = "delete from comments where movieNum=? and userId=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			
			pstmt.setDouble(1, vo.getMovieNum());
			pstmt.setString(2, vo.getUserId());

			pstmt.executeUpdate();
			
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			try {
				conn.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
}
