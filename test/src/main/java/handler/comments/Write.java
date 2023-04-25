package handler.comments;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import handler.Handler;

public class Write implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		if(request.getMethod().equals("GET")){ // 링크 클릭시 -> 코멘트 폼을 보여줘야된다.
			
			
		} else {
			
		}
		return null;
	}

}
