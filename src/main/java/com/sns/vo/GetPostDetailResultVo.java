package com.sns.vo;

import java.sql.Timestamp;

public class GetPostDetailResultVo {
	String 		user_nickname;
	String 		profilimg;
	String 		content;
	int 		count;
	boolean 	userLiked;
	
	Timestamp 	reg_date;
	
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
	
	public boolean isUserLiked() {
		return userLiked;
	}
	
	public void setUserLiked(boolean userLiked) {
		this.userLiked = userLiked;
	}
	
	public Timestamp getReg_date() {
		return reg_date;
	}
	
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
	
	

	
	
}
