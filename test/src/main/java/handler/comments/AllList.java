package handler.comments;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.CommentsService;
import comments.CommentsVo;
import handler.Handler;


/**
 * 댓글목록 전체 보여주기
 * @author gayeong
 *
 */
public class AllList implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		double movieNum = Double.parseDouble(request.getParameter("movieNum"));
		// 이 전 페이지(디테일)에서 클릭하면, 무비아이디를 갖고 갈거다. .do?movieNum=아이디
		ArrayList<CommentsVo> vos = new ArrayList<CommentsVo>();
		CommentsService service = new CommentsService();
		vos = service.showAllCommentsByDate(movieNum);
		
		request.setAttribute("vos", vos);
		
		
		return "/comment/commentList.jsp";
	}

}
