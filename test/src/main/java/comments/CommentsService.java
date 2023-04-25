package comments;

import java.util.ArrayList;

public class CommentsService {
	
	CommentsDao dao;
	
	public CommentsService() {
		dao = new CommentsDao();
	}
	
	/**
	 * 코멘트 달기
	 * @param vo
	 */
	public void insert(CommentsVo vo) {
		dao.insert(vo);
	}
	
	/**
	 * 내가 쓴 모든 코멘트 보여주기
	 * @param userId
	 * @return
	 */
	public ArrayList<CommentsVo> showMyComments(String userId) {
		return dao.showMyComments(userId);
	}
	
	/**
	 * 한 영화에 대한 모든 코멘트를 좋아요 기준으로 보여주기
	 * @param movieId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsByRate(double movieId) {
		return dao.showAllCommentsByRate(movieId);
	}
	
	/**
	 * 한 영화에 대한 모든 코멘트를 날짜 기준으로 보여주기
	 * @param movieId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsByDate(double movieId) {
		return dao.showAllCommentsByDate(movieId);
	}
	
	/**
	 * 한 영화에 대한 모든 코멘트를 스포일러를 기준으로 보여주기
	 * @param movieId
	 * @return
	 */
	public ArrayList<CommentsVo> showAllCommentsBySpoiler(double movieId) {
		return dao.showAllCommentsBySpoiler(movieId);
	}
	
	/**
	 * 코멘트 수정하기
	 * @param vo
	 */
	public void update(CommentsVo vo) {
		dao.update(vo);
	}
	
	/**
	 * 코멘트 삭제하기
	 * @param vo
	 */
	public void delete(CommentsVo vo) {
		dao.delete(vo);
	}
}