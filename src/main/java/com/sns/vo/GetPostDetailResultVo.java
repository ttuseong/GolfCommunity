package com.sns.vo;

public class GetPostDetailResultVo {
	String user_nickname;
	String profilimg;
	String content;
	int count;
	byte userLiked;
	
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getProfilimg() {
		return profilimg;
	}
	public void setProfilimg(String profilimg) {
		this.profilimg = profilimg;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public int getCount() {
		return count;
	}
	public void setCount(int count) {
		this.count = count;
	}
	public byte isUserLiked() {
		return userLiked;
	}
	public void setUserLiked(byte userLiked) {
		this.userLiked = userLiked;
	}
	
	
}
