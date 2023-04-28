package detail;

import java.util.ArrayList;

public class DetailService {
	private DetailDao dao;
	
	public DetailService() {
		dao = new DetailDao();
	}
	
	// 1. 추가
	public void inserDetail(DetailVo vo) {
		dao.insert(vo);
	}
	
	// 2. select
	// 2-1. 특정 아이디의 movienum과 star(별점) 불러오기
	public ArrayList<DetailVo> getStarList(String userId){
		return dao.starList(userId);
	}
	
	// 2-2. 특정 아이디의 찜한 movienum 불러오기
	public ArrayList<DetailVo> getWishList(String bb){
		return dao.WishList(bb);
	}
	
	// 2-3. 특정 영화의 평균 별점 불러오기
	public double getAvgStar (int movieNum) {
		return dao.avgStar(movieNum);
	}
	
	// 3. update
	// 3-1. 특정 영화의 찜했으면 0으로 만들기 
	public void updateWish(String userId, int movieId) {
		dao.updateWish(userId, movieId);
	}
	
	//특정 영화 찜 취소 하면 1로 바꾸기 
	public void delWish(DetailVo vo) {
		dao.delWish(vo);
	}
	
	// 3-2. 특정 영화의 별점 수정하기
	public void updateStar(DetailVo vo) {
		dao.updateStar(vo);
	}
}
