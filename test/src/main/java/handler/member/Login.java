package handler.member;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import handler.Handler;
import member.MemberService;
import member.MemberVo;

public class Login implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		
		System.out.println("아이디/비밀번호가 일치하지 않습니다.");
		String Allview = "";
		String msg = "";  
		
		if(request.getMethod().equals("GET")) {  
			request.setAttribute("Allview", "/member/login.jsp");  
			Allview = "/메인페이지로 이동"; 
			//Allview="/member/login.jsp";
			
		} else { 
			String userId = request.getParameter("userId");  
			String password = request.getParameter("password");  
			
			MemberService service = new MemberService();
			MemberVo vo = service.getMember(userId);
			
			if(vo != null && password.equals(vo.getPassword())) {
				HttpSession session = request.getSession();   
				session.setAttribute("userId", userId);
			}
		}
		return Allview;  
		
	}


}