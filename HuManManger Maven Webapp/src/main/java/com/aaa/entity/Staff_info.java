package com.aaa.entity;


public class Staff_info {
 private int staff_id;
 private String STAFF_NAME;
 private Pay pay;
public int getStaff_id() {
	return staff_id;
}
public void setStaff_id(int staff_id) {
	this.staff_id = staff_id;
}
public String getSTAFF_NAME() {
	return STAFF_NAME;
}
public void setSTAFF_NAME(String sTAFF_NAME) {
	STAFF_NAME = sTAFF_NAME;
}
public Pay getPay() {
	return pay;
}
public void setPay(Pay pay) {
	this.pay = pay;
}
@Override
public String toString() {
	return "Staff_info [staff_id=" + staff_id + ", STAFF_NAME=" + STAFF_NAME + ", pay=" + pay + "]";
}
public Staff_info(int staff_id, String sTAFF_NAME, Pay pay) {
	super();
	this.staff_id = staff_id;
	STAFF_NAME = sTAFF_NAME;
	this.pay = pay;
}
public Staff_info() {
	super();
	// TODO Auto-generated constructor stub
}
 
}
