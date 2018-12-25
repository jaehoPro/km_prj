package com.km.lodging;

import java.util.ArrayList;


public class LodgingVO {

	private int lodging_seq;
	private String build_type;
	private String lodging_type;
	private int max_lodging_people;
	private int room_cnt;
	private int bath_cnt;
	private String addr_nation;
	private String addr_city;
	private String addr_state;
	private String addr_road;
	private String addr_unit;
	private int addr_num;
	private String lodging_explain;
	private int out_in_interval;
	private int checkin_possible_start;
	private int checkin_possible_end;
	private int time_price;
	private int day_price;

	private String lodging_name;
	private String lodging_condition;
	private String usercode;

	/////////////////// 리뷰평점을 저장하는 변수
	private double clean_score_avg;
	private double location_score_avg;
	private double checkin_score_avg;

	// 메인페이지 : 대표이미지1장
	private LodgingPicVO lodgingPicVO;

	// 상세보기 페이지 : 이미지목록 n장
	private ArrayList<LodgingPicVO> lvolist;
	
	private String lodging_pic_rename;

	public int getLodging_seq() {
		return lodging_seq;
	}

	public void setLodging_seq(int lodging_seq) {
		this.lodging_seq = lodging_seq;
	}

	public String getBuild_type() {
		return build_type;
	}

	public void setBuild_type(String build_type) {
		this.build_type = build_type;
	}

	public String getLodging_type() {
		return lodging_type;
	}

	public void setLodging_type(String lodging_type) {
		this.lodging_type = lodging_type;
	}

	public int getMax_lodging_people() {
		return max_lodging_people;
	}

	public void setMax_lodging_people(int max_lodging_people) {
		this.max_lodging_people = max_lodging_people;
	}

	public int getRoom_cnt() {
		return room_cnt;
	}

	public void setRoom_cnt(int room_cnt) {
		this.room_cnt = room_cnt;
	}

	public int getBath_cnt() {
		return bath_cnt;
	}

	public void setBath_cnt(int bath_cnt) {
		this.bath_cnt = bath_cnt;
	}

	public String getAddr_nation() {
		return addr_nation;
	}

	public void setAddr_nation(String addr_nation) {
		this.addr_nation = addr_nation;
	}

	public String getAddr_city() {
		return addr_city;
	}

	public void setAddr_city(String addr_city) {
		this.addr_city = addr_city;
	}

	public String getAddr_state() {
		return addr_state;
	}

	public void setAddr_state(String addr_state) {
		this.addr_state = addr_state;
	}

	public String getAddr_road() {
		return addr_road;
	}

	public void setAddr_road(String addr_road) {
		this.addr_road = addr_road;
	}

	public String getAddr_unit() {
		return addr_unit;
	}

	public void setAddr_unit(String addr_unit) {
		this.addr_unit = addr_unit;
	}

	public int getAddr_num() {
		return addr_num;
	}

	public void setAddr_num(int addr_num) {
		this.addr_num = addr_num;
	}

	public String getLodging_explain() {
		return lodging_explain;
	}

	public void setLodging_explain(String lodging_explain) {
		this.lodging_explain = lodging_explain;
	}

	public int getOut_in_interval() {
		return out_in_interval;
	}

	public void setOut_in_interval(int out_in_interval) {
		this.out_in_interval = out_in_interval;
	}

	public int getCheckin_possible_start() {
		return checkin_possible_start;
	}

	public void setCheckin_possible_start(int checkin_possible_start) {
		this.checkin_possible_start = checkin_possible_start;
	}

	public int getCheckin_possible_end() {
		return checkin_possible_end;
	}

	public void setCheckin_possible_end(int checkin_possible_end) {
		this.checkin_possible_end = checkin_possible_end;
	}

	public int getTime_price() {
		return time_price;
	}

	public void setTime_price(int time_price) {
		this.time_price = time_price;
	}

	public int getDay_price() {
		return day_price;
	}

	public void setDay_price(int day_price) {
		this.day_price = day_price;
	}

	public String getLodging_name() {
		return lodging_name;
	}

	public void setLodging_name(String lodging_name) {
		this.lodging_name = lodging_name;
	}

	public String getLodging_condition() {
		return lodging_condition;
	}

	public void setLodging_condition(String lodging_condition) {
		this.lodging_condition = lodging_condition;
	}

	public String getUsercode() {
		return usercode;
	}

	public void setUsercode(String usercode) {
		this.usercode = usercode;
	}

	public double getClean_score_avg() {
		return clean_score_avg;
	}

	public void setClean_score_avg(double clean_score_avg) {
		this.clean_score_avg = clean_score_avg;
	}

	public double getLocation_score_avg() {
		return location_score_avg;
	}

	public void setLocation_score_avg(double location_score_avg) {
		this.location_score_avg = location_score_avg;
	}

	public double getCheckin_score_avg() {
		return checkin_score_avg;
	}

	public void setCheckin_score_avg(double checkin_score_avg) {
		this.checkin_score_avg = checkin_score_avg;
	}

	public LodgingPicVO getLodgingPicVO() {
		return lodgingPicVO;
	}

	public void setLodgingPicVO(LodgingPicVO lodgingPicVO) {
		this.lodgingPicVO = lodgingPicVO;
	}

	public ArrayList<LodgingPicVO> getLvolist() {
		return lvolist;
	}

	public void setLvolist(ArrayList<LodgingPicVO> lvolist) {
		this.lvolist = lvolist;
	}

	public String getLodging_pic_rename() {
		return lodging_pic_rename;
	}

	public void setLodging_pic_rename(String lodging_pic_rename) {
		this.lodging_pic_rename = lodging_pic_rename;
	}
	

	
	
}
