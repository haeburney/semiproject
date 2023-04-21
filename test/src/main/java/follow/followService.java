package follow;

import java.util.ArrayList;

public class followService {
	
	private followDao dao;
	
	public followService() {
		dao = new followDao(); 
	}
	
	public void follow (followVo vo) {
		dao.insert(vo);
	}
	
	public void delFollow (followVo vo) {
		dao.delete(vo);
	}
	
	public ArrayList<followVo> Allfollower(String userId){
	return dao.selFid(userId);
	}
	
	public void countAll (String userId) {
		dao.countF(userId);
	}
	

}
