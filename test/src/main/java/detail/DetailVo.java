package detail;

//detail (userId, movienum, wish(찜목록 0,1로 구분), star(int)) // 0 : 찜, 1: 찜 취소(default)

public class DetailVo {
	private String userId;
	private int movienum;
	private String wish;
	private int star;

	public DetailVo() {

	}

	public DetailVo(String userId, int movienum, String wish, int star) {
		super();
		this.userId = userId;
		this.movienum = movienum;
		this.wish = wish;
		this.star = star;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public int getMovienum() {
		return movienum;
	}

	public void setMovienum(int movienum) {
		this.movienum = movienum;
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

	@Override
	public String toString() {
		return "DetailVo [userId=" + userId + ", movienum=" + movienum + ", wish=" + wish + ", star=" + star + "]";
	}

}
