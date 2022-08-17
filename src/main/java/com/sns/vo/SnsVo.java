package com.sns.vo;

import java.sql.Timestamp;

public class SnsVo {
	long postId;
	String user_nickname;
	String content;
	Timestamp reg_date;
	int commentCount;
	int likesCount;
	String profilimg;
	String imgURI;
	
	public int getCommentCount() {
		return commentCount;
	}
	public void setCommentCount(int commentCount) {
		this.commentCount = commentCount;
	}
	public int getLikesCount() {
		return likesCount;
	}
	public void setLikesCount(int likesCount) {
		this.likesCount = likesCount;
	}
	public String getProfilimg() {
		return profilimg;
	}
	public void setProfilimg(String profilimg) {
		this.profilimg = profilimg;
	}
	public String getImgURI() {
		return imgURI;
	}
	public void setImgURI(String imgURI) {
		this.imgURI = imgURI;
	}
	public long getPostId() {
		return postId;
	}
	public void setPostId(long postId) {
		this.postId = postId;
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
