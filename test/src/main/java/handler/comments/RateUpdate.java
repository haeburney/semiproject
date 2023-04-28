package handler.comments;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.CommentsService;
import comments.CommentsVo;
import handler.Handler;

public class RateUpdate implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		if(request.getMethod().equals("GET")){
			return "";
		} else { // POST
			
			String userId = request.getParameter("userId");
			int movieNum = Integer.parseInt(request.getParameter("movieNum"));
			int rate = Integer.parseInt(request.getParameter("rate"));
			
			CommentsService service = new CommentsService();
			CommentsVo vo = new CommentsVo();
			vo.setUserId(userId);
			vo.setMovieNum(movieNum);
			vo.setRate(rate);
			
			service.setRate(vo);
			
			return "/comment/commentList.jsp";
		}
	}

}
