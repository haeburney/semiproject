package handler.detail;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import comments.CommentsService;
import comments.CommentsVo;
import handler.Handler;

public class AddDetailPage implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		
		if (request.getMethod().equals("GET")) {
				
				
			int movieNum = Integer.parseInt(request.getParameter("movieId"));
			String userId = request.getParameter("userId");
			String comment = request.getParameter("comment");
			String spoiler = request.getParameter("isSpolier");
			System.out.println(spoiler);
			
			CommentsService service = new CommentsService();
			boolean flag = service.checkcomment(new CommentsVo(userId,null,0,movieNum,comment,null,0,spoiler));
			// 사용자가 이미 해당 영화에 대한 댓글을 작성한 경우 처리
			if (flag) { 
				
				//이미 댓글 있다면 수정하는 걸로 돌아와도 좋을듯 
				// 이미 댓글을 작성했으므로 에러 메시지를 추가하고 JSP로 이동
				System.out.println(flag);
				return "/movie/RDetail.jsp";
			}
			
			// 댓글 작성 처리
			service.insert(new CommentsVo(movieNum, userId, comment, spoiler));
			
			// JSP로 이동
			return "/movie/RDetail.jsp";
		}
		
		return null;
	}
		
	}
