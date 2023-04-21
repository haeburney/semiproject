package member;

public class MemberVo {
	private String userId;
	private String password;
	private String nickname;
	
	public MemberVo() {}
	public MemberVo(String userId, String password, String nickname) {
		super();
		this.userId = userId;
		this.password = password;
		this.nickname = nickname;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	@Override
	public String toString() {
		return "MemberVo [userId=" + userId + ", password=" + password + ", nickname=" + nickname + "]";
	}
}
