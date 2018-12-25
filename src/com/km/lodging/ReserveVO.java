package com.km.lodging;

public class ReserveVO {
	
private int reserve_seq;
private int lodging_seq;
private String checkin_date;
private String checkout_date;

private int reserve_people;
private int price;
private String reserve_confirm;
private String paymemt_confirm;
private String reserve_cancle;
private String reserve_cancle_reason;
private String massege_to_host;
private String usercode;
private String addr_city;
private String lodging_pic_rename;

private int checkin_time;
private int checkout_time;
private String lodging_name;



public String getLodging_name() {
	return lodging_name;
}
public void setLodging_name(String lodging_name) {
	this.lodging_name = lodging_name;
}
public int getCheckin_time() {
	return checkin_time;
}
public void setCheckin_time(int checkin_time) {
	this.checkin_time = checkin_time;
}
public int getCheckout_time() {
	return checkout_time;
}
public void setCheckout_time(int checkout_time) {
	this.checkout_time = checkout_time;
}
public String getLodging_pic_rename() {
	return lodging_pic_rename;
}
public void setLodging_pic_rename(String lodging_pic_rename) {
	this.lodging_pic_rename = lodging_pic_rename;
}
public String getAddr_city() {
	return addr_city;
}
public void setAddr_city(String addr_city) {
	this.addr_city = addr_city;
}
public int getReserve_seq() {
	return reserve_seq;
}
public void setReserve_seq(int reserve_seq) {
	this.reserve_seq = reserve_seq;
}
public int getLodging_seq() {
	return lodging_seq;
}
public void setLodging_seq(int lodging_seq) {
	this.lodging_seq = lodging_seq;
}
public String getCheckin_date() {
	return checkin_date;
}
public void setCheckin_date(String checkin_date) {
	this.checkin_date = checkin_date;
}
public String getCheckout_date() {
	return checkout_date;
}
public void setCheckout_date(String checkout_date) {
	this.checkout_date = checkout_date;
}

public int getReserve_people() {
	return reserve_people;
}
public void setReserve_people(int reserve_people) {
	this.reserve_people = reserve_people;
}
public int getPrice() {
	return price;
}
public void setPrice(int price) {
	this.price = price;
}
public String getReserve_confirm() {
	return reserve_confirm;
}
public void setReserve_confirm(String reserve_confirm) {
	this.reserve_confirm = reserve_confirm;
}
public String getPaymemt_confirm() {
	return paymemt_confirm;
}
public void setPaymemt_confirm(String paymemt_confirm) {
	this.paymemt_confirm = paymemt_confirm;
}
public String getReserve_cancle() {
	return reserve_cancle;
}
public void setReserve_cancle(String reserve_cancle) {
	this.reserve_cancle = reserve_cancle;
}
public String getReserve_cancle_reason() {
	return reserve_cancle_reason;
}
public void setReserve_cancle_reason(String reserve_cancle_reason) {
	this.reserve_cancle_reason = reserve_cancle_reason;
}
public String getMassege_to_host() {
	return massege_to_host;
}
public void setMassege_to_host(String massege_to_host) {
	this.massege_to_host = massege_to_host;
}
public String getUsercode() {
	return usercode;
}
public void setUsercode(String usercode) {
	this.usercode = usercode;
}


}
