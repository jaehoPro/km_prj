package com.km.lodging;

public class ReviewScoreVO {
	//---------------review_score table---------------
	private int review_seq;
	private int lodging_seq;
	private int reserve_seq;
	private int clean_score;
	private int location_score;
	private int checkin_score;
	private String review_content;
	private String review_regdate;
	private String usercode;
	///////////////////////////////////////////////////
	
	//---------------users table---------------
	private String l_name;
	private String 	f_name;
	private String introduction;
	private String user_pic_path;
	private String user_pic_oriname;
	//////////////////////////////////////////////////
	
	
	
	
	public String getL_name() {
		return l_name;
	}
	public void setL_name(String l_name) {
		this.l_name = l_name;
	}
	public String getF_name() {
		return f_name;
	}
	public void setF_name(String f_name) {
		this.f_name = f_name;
	}
	public String getIntroduction() {
		return introduction;
	}
	public void setIntroduction(String introduction) {
		this.introduction = introduction;
	}
	public String getUser_pic_path() {
		return user_pic_path;
	}
	public void setUser_pic_path(String user_pic_path) {
		this.user_pic_path = user_pic_path;
	}
	public String getUser_pic_oriname() {
		return user_pic_oriname;
	}
	public void setUser_pic_oriname(String user_pic_oriname) {
		this.user_pic_oriname = user_pic_oriname;
	}

	
	public int getReview_seq() {
		return review_seq;
	}
	public void setReview_seq(int review_seq) {
		this.review_seq = review_seq;
	}
	public int getLodging_seq() {
		return lodging_seq;
	}
	public void setLodging_seq(int lodging_seq) {
		this.lodging_seq = lodging_seq;
	}
	public int getReserve_seq() {
		return reserve_seq;
	}
	public void setReserve_seq(int reserve_seq) {
		this.reserve_seq = reserve_seq;
	}
	public int getClean_score() {
		return clean_score;
	}
	public void setClean_score(int clean_score) {
		this.clean_score = clean_score;
	}
	public int getLocation_score() {
		return location_score;
	}
	public void setLocation_score(int location_score) {
		this.location_score = location_score;
	}
	public int getCheckin_score() {
		return checkin_score;
	}
	public void setCheckin_score(int checkin_score) {
		this.checkin_score = checkin_score;
	}
	public String getReview_content() {
		return review_content;
	}
	public void setReview_content(String review_content) {
		this.review_content = review_content;
	}
	public String getReview_regdate() {
		return review_regdate;
	}
	public void setReview_regdate(String review_regdate) {
		this.review_regdate = review_regdate;
	}
	public String getUsercode() {
		return usercode;
	}
	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}
	
	
	
		
}
