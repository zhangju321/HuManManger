package com.aaa.entity;


public class Position {
 private int positionId;
 private int positionName;
private Department de;
public int getPositionId() {
	return positionId;
}
public void setPositionId(int positionId) {
	this.positionId = positionId;
}
public int getPositionName() {
	return positionName;
}
public void setPositionName(int positionName) {
	this.positionName = positionName;
}
public Department getDe() {
	return de;
}
public void setDe(Department de) {
	this.de = de;
}
@Override
public String toString() {
	return "Position [positionId=" + positionId + ", positionName=" + positionName + ", de=" + de + "]";
}
public Position(int positionId, int positionName, Department de) {
	super();
	this.positionId = positionId;
	this.positionName = positionName;
	this.de = de;
}
public Position() {
	super();
	// TODO Auto-generated constructor stub
}

 
}
