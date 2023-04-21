package comments;

import java.sql.Date;

public class CommentsVo {

	private double num;			// pk
	private double movieNum;	// 영화 정보 api 로부터 받아온 아이디값
	private String userId;		// fk, references member
	private String comments;	// varString2(4000)
	private Date w_Date;		// DB 타입 : date
	private double rate = 0;	// 좋아요 체크 (insert 시 무조건 0 값으로 삽입)
	private String spoiler = "1";	// 스포일러 댓글인지 아닌지 구분
	
	
	public CommentsVo() {
		
	}


	public CommentsVo(double num, double movieNum, String userId, String comments, Date w_Date, double rate,
			String spoiler) {
		super();
		this.num = num;
		this.movieNum = movieNum;
		this.userId = userId;
		this.comments = comments;
		this.w_Date = w_Date;
		this.rate = rate;
		this.spoiler = spoiler;
	}


	public double getNum() {
		return num;
	}


	public void setNum(double num) {
		this.num = num;
	}


	public double getMovieNum() {
		return movieNum;
	}


	public void setMovieNum(double movieNum) {
		this.movieNum = movieNum;
	}


	public String getUserId() {
		return userId;
	}


	public void setUserId(String userId) {
		this.userId = userId;
	}


	public String getComments() {
		return comments;
	}


	public void setComments(String comments) {
		this.comments = comments;
	}


	public Date getW_Date() {
		return w_Date;
	}


	public void setW_Date(Date w_Date) {
		this.w_Date = w_Date;
	}


	public double getRate() {
		return rate;
	}


	public void setRate(double rate) {
		this.rate = rate;
	}


	public String getSpoiler() {
		return spoiler;
	}


	public void setSpoiler(String spoiler) {
		this.spoiler = spoiler;
	}


	@Override
	public String toString() {
		return "CommentsVo [num=" + num + ", movieNum=" + movieNum + ", userId=" + userId + ", comments=" + comments
				+ ", w_Date=" + w_Date + ", rate=" + rate + ", spoiler=" + spoiler + "]";
	}

	

}