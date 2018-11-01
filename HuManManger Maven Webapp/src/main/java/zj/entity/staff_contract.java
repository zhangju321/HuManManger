package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class staff_contract {
    private int contractId;//��ͬ���

    private int staffId;//Ա�����

    private int contractType;//��ͬ����

    private int contractSpecialization;//��ͬ����

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date makeContract;//��ͬǩ������

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date trailEffectiveTime;//������Ч����

    private String probationaryPeriod;//��������

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date trailOverTime;//���õ�������

    private int passOrNot;//�Ƿ�ת��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date probationEndDate;//��ͬת������

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date probationEffectiveDate;//��ͬ��Ч����

    private String activePeriod;//��ͬ����

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date contractEndTime;//��ͬ��������
    
    private String remark;//��ע

    private int removeOrNot;//��ͬ�Ƿ���

    private int status;//��ͬ״̬

    private String signTimes;//ǩԼ����

    private String attachmentId;//�������

    private String attachmentName;//��������

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date addTime;//�Ǽ�ʱ��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastUpdateTime;//����޸�ʱ��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date remindTime;//��ͬ��������

    private String staffUserName;//�׷�
    
    private String remindUser;//������Ա

    private int remindType;//���ѷ�ʽ

    private int hasReminded;//�Ƿ��Ѿ�����

    private String renewTime;//��ͬ��ǩʱ��

    private String contractEnterpries;//��ͬ��ǩ��˾

    private int isTrial;//��ͬ�Ƿ�����

    private int isRenew;//��ͬ�Ƿ���ǩ

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date contractRemoveTime;//��ͬ�������

	public int getContractId() {
		return contractId;
	}

	public void setContractId(int contractId) {
		this.contractId = contractId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getContractType() {
		return contractType;
	}

	public void setContractType(int contractType) {
		this.contractType = contractType;
	}

	public int getContractSpecialization() {
		return contractSpecialization;
	}

	public void setContractSpecialization(int contractSpecialization) {
		this.contractSpecialization = contractSpecialization;
	}

	public Date getMakeContract() {
		return makeContract;
	}

	public void setMakeContract(Date makeContract) {
		this.makeContract = makeContract;
	}

	public Date getTrailEffectiveTime() {
		return trailEffectiveTime;
	}

	public void setTrailEffectiveTime(Date trailEffectiveTime) {
		this.trailEffectiveTime = trailEffectiveTime;
	}

	public String getProbationaryPeriod() {
		return probationaryPeriod;
	}

	public void setProbationaryPeriod(String probationaryPeriod) {
		this.probationaryPeriod = probationaryPeriod;
	}

	public Date getTrailOverTime() {
		return trailOverTime;
	}

	public void setTrailOverTime(Date trailOverTime) {
		this.trailOverTime = trailOverTime;
	}

	public int getPassOrNot() {
		return passOrNot;
	}

	public void setPassOrNot(int passOrNot) {
		this.passOrNot = passOrNot;
	}

	public Date getProbationEndDate() {
		return probationEndDate;
	}

	public void setProbationEndDate(Date probationEndDate) {
		this.probationEndDate = probationEndDate;
	}

	public Date getProbationEffectiveDate() {
		return probationEffectiveDate;
	}

	public void setProbationEffectiveDate(Date probationEffectiveDate) {
		this.probationEffectiveDate = probationEffectiveDate;
	}

	public String getActivePeriod() {
		return activePeriod;
	}

	public void setActivePeriod(String activePeriod) {
		this.activePeriod = activePeriod;
	}

	public Date getContractEndTime() {
		return contractEndTime;
	}

	public void setContractEndTime(Date contractEndTime) {
		this.contractEndTime = contractEndTime;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public int getRemoveOrNot() {
		return removeOrNot;
	}

	public void setRemoveOrNot(int removeOrNot) {
		this.removeOrNot = removeOrNot;
	}

	public int getStatus() {
		return status;
	}

	public void setStatus(int status) {
		this.status = status;
	}

	public String getSignTimes() {
		return signTimes;
	}

	public void setSignTimes(String signTimes) {
		this.signTimes = signTimes;
	}

	public String getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(String attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}

	public Date getAddTime() {
		return addTime;
	}

	public void setAddTime(Date addTime) {
		this.addTime = addTime;
	}

	public Date getLastUpdateTime() {
		return lastUpdateTime;
	}

	public void setLastUpdateTime(Date lastUpdateTime) {
		this.lastUpdateTime = lastUpdateTime;
	}

	public Date getRemindTime() {
		return remindTime;
	}

	public void setRemindTime(Date remindTime) {
		this.remindTime = remindTime;
	}

	public String getStaffUserName() {
		return staffUserName;
	}

	public void setStaffUserName(String staffUserName) {
		this.staffUserName = staffUserName;
	}

	public String getRemindUser() {
		return remindUser;
	}

	public void setRemindUser(String remindUser) {
		this.remindUser = remindUser;
	}

	public int getRemindType() {
		return remindType;
	}

	public void setRemindType(int remindType) {
		this.remindType = remindType;
	}

	public int getHasReminded() {
		return hasReminded;
	}

	public void setHasReminded(int hasReminded) {
		this.hasReminded = hasReminded;
	}

	public String getRenewTime() {
		return renewTime;
	}

	public void setRenewTime(String renewTime) {
		this.renewTime = renewTime;
	}

	public String getContractEnterpries() {
		return contractEnterpries;
	}

	public void setContractEnterpries(String contractEnterpries) {
		this.contractEnterpries = contractEnterpries;
	}

	public int getIsTrial() {
		return isTrial;
	}

	public void setIsTrial(int isTrial) {
		this.isTrial = isTrial;
	}

	public int getIsRenew() {
		return isRenew;
	}

	public void setIsRenew(int isRenew) {
		this.isRenew = isRenew;
	}

	public Date getContractRemoveTime() {
		return contractRemoveTime;
	}

	public void setContractRemoveTime(Date contractRemoveTime) {
		this.contractRemoveTime = contractRemoveTime;
	}


    


   
}