package detail;

//detail (userId, movieNum, wish(찜목록 0,1로 구분), star(int)) // 0 : 찜, 1: 찜 취소(default)

public class DetailVo {
	private String userId;
	private int movieNum;
	private String wish;
	private int star;
	private int num;

	public DetailVo() {

	}

	public DetailVo(String userId, int movieNum, String wish, int star, int num) {
		super();
		this.userId = userId;
		this.movieNum = movieNum;
		this.wish = wish;
		this.star = star;
		this.num = num;
	}
	
	public DetailVo(String userId, int movieNum, String wish) {
		this.userId = userId;
		this.movieNum = movieNum;
		this.wish = wish;
		
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getmovieNum() {
		return movieNum;
	}

	public void setmovieNum(int movieNum) {
		this.movieNum = movieNum;
	}

	public String getWish() {
		return wish;
	}

	public void setWish(String wish) {
		this.wish = wish;
	}

	public int getStar() {
		return star;
	}

	public void setStar(int star) {
		this.star = star;
	}

	public int getNum() {
		return num;
	}

	public void setNum(int num) {
		this.num = num;
	}

	@Override
	public String toString() {
		return "DetailVo [num=" + num + ", userId=" + userId + ", movieNum=" + movieNum + ", wish=" + wish + ", star="
				+ star + "]";
	}

}
