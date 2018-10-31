package com.aaa.entity;

import java.util.List;

public class Work {
 private int work_id;
 private int late;//³Ùµ½
 private int early_retreat;//ÔçÍË
 private int absenteeism;//¿õ¹¤
 private List<Check> check;
public int getWork_id() {
	return work_id;
}
public void setWork_id(int work_id) {
	this.work_id = work_id;
}
public int getLate() {
	return late;
}
public void setLate(int late) {
	this.late = late;
}
public int getEarly_retreat() {
	return early_retreat;
}
public void setEarly_retreat(int early_retreat) {
	this.early_retreat = early_retreat;
}
public int getAbsenteeism() {
	return absenteeism;
}
public void setAbsenteeism(int absenteeism) {
	this.absenteeism = absenteeism;
}
public List<Check> getCheck() {
	return check;
}
public void setCheck(List<Check> check) {
	this.check = check;
}
@Override
public String toString() {
	return "Work [work_id=" + work_id + ", late=" + late + ", early_retreat=" + early_retreat + ", absenteeism="
			+ absenteeism + ", check=" + check + "]";
}
public Work(int work_id, int late, int early_retreat, int absenteeism, List<Check> check) {
	super();
	this.work_id = work_id;
	this.late = late;
	this.early_retreat = early_retreat;
	this.absenteeism = absenteeism;
	this.check = check;
}
public Work() {
	super();
	// TODO Auto-generated constructor stub
}

 
 
}
