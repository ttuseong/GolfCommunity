package com.sns.vo;

import java.sql.Timestamp;

public class GetPostCommentResultVo {
	String profilimg;
	String user_nickname;
	String content;
	Timestamp reg_date;
	public String getProfilimg() {
		return profilimg;
	}
	public void setProfilimg(String profilimg) {
		this.profilimg = profilimg;
	}
	public String getUser_nickname() {
		return user_nickname;
	}
	public void setUser_nickname(String user_nickname) {
		this.user_nickname = user_nickname;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public Timestamp getReg_date() {
		return reg_date;
	}
	public void setReg_date(Timestamp reg_date) {
		this.reg_date = reg_date;
	}
}
