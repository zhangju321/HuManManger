package lkm.entity;

import java.util.Date;

public class vocation {//ว๋ผู
    private int vocationId;

    private int staffId;

    private String vocationReason;

    private String vocationQiTime;

    private String vocationJieTime;

    private String vocationType;

    private String statusName;

    private String examinePerson;

    private String circulate;

    private String operate;

	public int getVocationId() {
		return vocationId;
	}

	public void setVocationId(int vocationId) {
		this.vocationId = vocationId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public String getVocationReason() {
		return vocationReason;
	}

	public void setVocationReason(String vocationReason) {
		this.vocationReason = vocationReason;
	}

	public String getVocationQiTime() {
		return vocationQiTime;
	}

	public void setVocationQiTime(String vocationQiTime) {
		this.vocationQiTime = vocationQiTime;
	}

	public String getVocationJieTime() {
		return vocationJieTime;
	}

	public void setVocationJieTime(String vocationJieTime) {
		this.vocationJieTime = vocationJieTime;
	}

	public String getVocationType() {
		return vocationType;
	}

	public void setVocationType(String vocationType) {
		this.vocationType = vocationType;
	}

	public String getStatusName() {
		return statusName;
	}

	public void setStatusName(String statusName) {
		this.statusName = statusName;
	}

	public String getExaminePerson() {
		return examinePerson;
	}

	public void setExaminePerson(String examinePerson) {
		this.examinePerson = examinePerson;
	}

	public String getCirculate() {
		return circulate;
	}

	public void setCirculate(String circulate) {
		this.circulate = circulate;
	}

	public String getOperate() {
		return operate;
	}

	public void setOperate(String operate) {
		this.operate = operate;
	}

 
}