package com.km.review;

public class ReviewVO {
	private String review_seq;
	private String lodging_seq;	
	private String reserve_seq;
	private int clean_score;
	private int location_score;
	private int checkin_score;
	private String review_content;
	
	
	
	public String getReview_seq() {
		return review_seq;
	}
	public void setReview_seq(String review_seq) {
		this.review_seq = review_seq;
	}
	public String getLodging_seq() {
		return lodging_seq;
	}
	public void setLodging_seq(String lodging_seq) {
		this.lodging_seq = lodging_seq;
	}
	public String getReserve_seq() {
		return reserve_seq;
	}
	public void setReserve_seq(String reserve_seq) {
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
	private String review_regdate;
	private String usercode;
	 
	
	
	
	
	
	

}