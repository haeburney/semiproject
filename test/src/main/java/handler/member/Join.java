package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import member.MemberService;
import member.MemberVo;

public class Join implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("여기에 왔니?");
		String view = "";

		if (request.getMethod().equals("GET")) {
			request.setAttribute("view", "/member/join.jsp");
			view = "/메인페이지로 이동";
		} else {
			System.out.println("여기는..?");
			String userId = request.getParameter("userId");
			String password = request.getParameter("password");
			String nickname = request.getParameter("nickname");
			System.out.println("userid :"+userId+" / password :"+password+" / nickname :"+nickname);
			MemberService service = new MemberService();
			service.join(new MemberVo(userId, password, nickname));
			view = "redirect:/메인페이지로 이동";
		}

		return view;
	}

}
