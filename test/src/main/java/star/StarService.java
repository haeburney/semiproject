package star;

import java.util.ArrayList;

public class StarService {
	private StarDao dao;

	public StarService() {
		dao = new StarDao();
	}

	public void starInsert(StarVo vo) {
		dao.insert(vo);
	}
	
	public ArrayList<StarVo> getStarList(String userId){
		return dao.starList(userId);
	}
	
	public double getAvgStar(int movieNum) {
		return dao.avgStar(movieNum);
	}
	
	public void updateStar(StarVo vo) {
		dao.updateStar(vo);
	}
	
	public void starNum(String userId, int movieNum) {
		dao.getStarNum(userId, movieNum);
	}
	
}
