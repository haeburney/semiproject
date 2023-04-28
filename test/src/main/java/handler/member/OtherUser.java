package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import follow.followService;
import follow.followVo;
import handler.Handler;

public class OtherUser implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		String userId = request.getParameter("userId");
		String followedId = request.getParameter("followedId");
		
		request.setAttribute("followedId", followedId);
		
		
		followService service = new followService();
		boolean flag = service.checkfollow(new followVo(userId, followedId));
		
		request.setAttribute("flag", flag);
		
		return "/member/otherUser.jsp";
	}

}
