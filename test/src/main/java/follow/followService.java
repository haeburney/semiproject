package follow;

import java.util.ArrayList;

public class followService {
	
	private followDao dao;
	
	public followService() {
		dao = new followDao(); 
	}
	
	//팔로우 하겠다 
	public void follow (followVo vo) {
		dao.insert(vo);
	}
	
	//팔로우 취소 
	public void delFollow (followVo vo) {
		dao.delete(vo);
	}
	
	//내가 팔로우 한 사람 목록을 보여줘 
	public ArrayList<followVo> Allfollower(String userId){
	return dao.selFid(userId);
	}
	
	// 내가 팔로우한 사람 숫자 좀 세어줘 근데 이거 없어도 될 것 같기도 하고 ..... 핸들러에서 count로 구현을 그렇게 하면 될 것 같음 
	public void countAll (String userId) {
		dao.countF(userId);
	}
	

}
