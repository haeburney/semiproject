package handler.detail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.CommentsService;
import comments.CommentsVo;
import handler.Handler;

public class AddDetailPage implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		int movieNum = Integer.parseInt(request.getParameter("movieNum"));
		String userId = request.getParameter("userId");
		String comment = request.getParameter("comment");
		String spoiler = request.getParameter("spoiler");
		//String num = request.getParameter("num");

		CommentsService service = new CommentsService();
		CommentsVo vo = new CommentsVo();
		//vo.setNum(Integer.parseInt(num));
		vo.setMovieNum(movieNum);
		vo.setUserId(userId);
		vo.setComments(comment);
		vo.setSpoiler(spoiler);

		CommentsVo commentResult = new CommentsVo();
		commentResult =	service.addCommentDetail(vo);

		return "responsebody/" + commentResult.getComments();
	}

}
