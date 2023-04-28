package handler.detail;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import handler.Handler;
import movie.movieVo;
import wish.wishService;
import wish.wishVo;

public class MyWishView implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		//내가 찜한 영화를 들고가서 보여줘야해 ok? 
//		String userId = request.getParameter("userId");
//		wishService wService = new wishService();
//		
//		ArrayList<wishVo> wList= wService.getWishList(userId);
//		request.setAttribute("dList", dList);
//		ArrayList<movieVo> dImgList=new ArrayList<movieVo>();
//		
//		// 이제 영화 정보를 불러와야 해요 ㅎ 
//		for(int i=0;i<dList.size();i++) {
//			
//			String movieNum = Integer.toString(dList.get(i).getmovieNum());
//			System.out.println("movie Id :"+movieNum);
//			System.out.println(dList.get(i).getWish());
//			try {
//				URL url = new URL("https://api.themoviedb.org/3/movie/"+movieNum+"?api_key=c8a3d049a6a74a627e4a2fa5bfd674f6&language=ko");
//				URLConnection conn = url.openConnection();
//				InputStream is = conn.getInputStream();
//				JSONParser parser = new JSONParser();
//				JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(is));
//				System.out.println(obj);
//				System.out.println(url);
//				String title = (String) obj.get("title");
//				String poster_path = (String) obj.get("poster_path");
//				String filePath = "https://image.tmdb.org/t/p/original" + poster_path;
//				dImgList.add(new movieVo(movieNum, filePath, title, ""));
////				JSONArray posters = (JSONArray) obj.get("posters");
////				// 특정 무비 아이디의 포스터 사진을 가져오기 
////					
////				System.out.println("사진개수 :"+posters.size());
////				int randomImg = (int) (Math.random() * posters.size());
////				// 특정 무비 아이디가 갖고 있는 포스터만큼 난수 생성
////				// Math.random() * 10 이면 0~9의 난수를 생성해준다.
////				if(posters.size()>0) {
////					JSONObject s = (JSONObject) posters.get(randomImg);
////					String posterPath = (String) s.get("file_path");
////					// 그 랜덤번째 인덱스에 있는 포스터 이미지를 가져오기 
////					
////					String filePath = "https://image.tmdb.org/t/p/original" + posterPath;
////					dImgList.add(new movieVo(movieNum, filePath, "", "")); 
////				} else {
////					String filePath = request.getContextPath()+"/image/No_image.png";
////					dImgList.add(new movieVo(movieNum, filePath, "", "")); 
////				}
//				
//			
//				
//				
//			} catch (MalformedURLException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (IOException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			} catch (ParseException e) {
//				// TODO Auto-generated catch block
//				e.printStackTrace();
//			}
//		}
//		System.out.println(dList);
//		System.out.println(dImgList);
//		System.out.println("dList size :"+dList.size());
//		System.out.println("dImgList : "+dImgList.size());
//		request.setAttribute("dImgList", dImgList);
//		
		
		return "/detail/myWishList.jsp";
	}

}
