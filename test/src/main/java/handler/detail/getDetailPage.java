package handler.detail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.CommentsService;
import comments.CommentsVo;
import handler.Handler;

public class getDetailPage implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		int movieNum = Integer.parseInt(request.getParameter("movieNum"));
		String userId = request.getParameter("userId");

		CommentsService service = new CommentsService();
		CommentsVo vo = new CommentsVo();
		//vo.setNum(Integer.parseInt(num));
		vo.setMovieNum(movieNum);
		vo.setUserId(userId);

		CommentsVo commentResult = new CommentsVo();
		commentResult =	service.showMyComment(movieNum, userId);

		return "responsebody/" + commentResult.getComments();
	}

}
