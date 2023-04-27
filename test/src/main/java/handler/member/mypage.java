package handler.member;

import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.MalformedURLException;
import java.net.URL;
import java.net.URLConnection;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

import comments.CommentsService;
import comments.CommentsVo;
import detail.DetailService;
import detail.DetailVo;
import follow.followService;
import handler.Handler;
import member.MemberService;
import member.MemberVo;
import movie.movieVo;

public class mypage implements Handler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		if (request.getMethod().equals("GET")) {
			String userId = request.getParameter("userId");

			// 한 줄 소개
			MemberService memberService = new MemberService();
			MemberVo vo = memberService.getMember(userId);
			request.setAttribute("vo", vo);

			// 팔로우 팔로잉 숫자
			followService followService = new followService();
			int fCount = followService.followedIdCount(userId); // 팔로워수
			int uCount = followService.userIdCount(userId); // 팔로잉수
			request.setAttribute("fCount", fCount);
			request.setAttribute("uCount", uCount);

			// 찜 리스트
			DetailService detailService = new DetailService();
			ArrayList<DetailVo> detailList = detailService.getWishList(userId);
			request.setAttribute("detailList", detailList); // 어라 이거 필요없어보이는데 과거의 나야 왜 이렇게 써놨니 
			ArrayList<movieVo> detailImageList = new ArrayList<movieVo>();

			int max = 6; // 한 줄에 총 보여질 개수
			int size = 0;
			if (detailList.size() <= max) {
				size = detailList.size();
			} else {
				size = max;
			}

			for (int i = 0; i < size; i++) {
				//String movieNum = "502356";
				String movieNum = Integer.toString(detailList.get(i).getmovieNum());
				try {
					URL url = new URL("https://api.themoviedb.org/3/movie/" + movieNum
							+ "/images?api_key=c8a3d049a6a74a627e4a2fa5bfd674f6&language=ko");
					URLConnection conn = url.openConnection();
					InputStream is = conn.getInputStream();
					JSONParser parser = new JSONParser();
					JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(is));
					JSONArray posters = (JSONArray) obj.get("posters");
					// 특정 무비 아이디의 포스터 사진을 가져오기 

					int randomImg = (int) (Math.random() * posters.size());
					// 특정 무비 아이디가 갖고 있는 포스터만큼 난수 생성
					// Math.random() * 10 이면 0~9의 난수를 생성해준다.
					if(posters.size()>0) {
						JSONObject s = (JSONObject) posters.get(randomImg);
						String posterPath = (String) s.get("file_path");
						// 그 랜덤번째 인덱스에 있는 포스터 이미지를 가져오기 
						
						String filePath = "https://image.tmdb.org/t/p/original" + posterPath;
						detailImageList.add(new movieVo(movieNum, filePath, "", "")); 
					}					
					
				} catch (MalformedURLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			request.setAttribute("detailImageList", detailImageList);
			// 여기


			// 별점 리스트
			ArrayList<DetailVo> starList = detailService.getStarList(userId);
			//request.setAttribute("starList", starList);
			ArrayList<movieVo> starImageList = new ArrayList<movieVo>();
			
			size = 0;
			if (starList.size() <= max) {
				size = starList.size();
			} else {
				size = max;
			}

			for (int i = 0; i < size; i++) {
				//String movieNum = "502356";
				String movieNum = Integer.toString(starList.get(i).getmovieNum());
				try {
					URL url = new URL("https://api.themoviedb.org/3/movie/" + movieNum
							+ "/images?api_key=c8a3d049a6a74a627e4a2fa5bfd674f6&language=ko");
					URLConnection conn = url.openConnection();
					InputStream is = conn.getInputStream();
					JSONParser parser = new JSONParser();
					JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(is));
					JSONArray posters = (JSONArray) obj.get("posters");

					int randomImg = (int) (Math.random() * posters.size());
					if(posters.size()>0) {
						JSONObject s = (JSONObject) posters.get(randomImg);
						String posterPath = (String) s.get("file_path");
						String filePath = "https://image.tmdb.org/t/p/original" + posterPath;
						starImageList.add(new movieVo(movieNum, filePath, "", "")); 
					}		
				} catch (MalformedURLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			request.setAttribute("starImageList", starImageList);

			
			// 코멘트 리스트
			CommentsService commentsService = new CommentsService();
			ArrayList<CommentsVo> commentsList = commentsService.showMyComments(userId);
			request.setAttribute("commentsList", commentsList);
			ArrayList<movieVo> commentsImageList = new ArrayList<movieVo>();
			
			size = 0;
			if (commentsList.size() <= max) {
				size = commentsList.size();
			} else {
				size = max;
			}

			for (int i = 0; i < size; i++) {
				 //String movieNum = "502356";
				 String movieNum = String.valueOf(commentsList.get(i).getMovieNum());
				try {
					URL url = new URL("https://api.themoviedb.org/3/movie/" + movieNum
							+ "/images?api_key=c8a3d049a6a74a627e4a2fa5bfd674f6&language=ko");
					URLConnection conn = url.openConnection();
					InputStream is = conn.getInputStream();
					JSONParser parser = new JSONParser();
					JSONObject obj = (JSONObject) parser.parse(new InputStreamReader(is));
					JSONArray posters = (JSONArray) obj.get("posters");

					int randomImg = (int) (Math.random() * posters.size());
					if(posters.size()>0) {
						JSONObject s = (JSONObject) posters.get(randomImg);
						String posterPath = (String) s.get("file_path");
						String filePath = "https://image.tmdb.org/t/p/original" + posterPath;
						commentsImageList.add(new movieVo(movieNum, filePath, "", "")); 
					}		
				} catch (MalformedURLException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (IOException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				} catch (ParseException e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			request.setAttribute("commentsImageList", commentsImageList);
			
			request.setAttribute("view", "/member/mypage.jsp");
			return "/member/mypage.jsp";
		}

		return null;
	}

}
