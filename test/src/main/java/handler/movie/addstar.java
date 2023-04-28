package handler.movie;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;
import star.StarService;
import star.StarVo;

public class addstar implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		 if(request.getMethod().equals("GET")) {
	         
	      } else {
	    	  
	         String userId = request.getParameter("userId");
	         int movieId=Integer.parseInt(request.getParameter("movieId"));
	         int value=Integer.parseInt(request.getParameter("value"));

	         StarService service = new StarService(); 
	         service.starInsert(new StarVo (0,userId, movieId, value));

	}

		 return "/movie/RDetail.jsp";
}
	
}
