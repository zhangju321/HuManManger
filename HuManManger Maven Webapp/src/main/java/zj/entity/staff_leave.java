package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class staff_leave {
    private int leaveId;//��ְ���
    
    private int staffId;//Ա�����

    private int departmentid;//�������
    
    private int positionid;//ְ�����

    private int staStaffId;//Ա�����

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date quitTimePlan;//����ְ����

    private int quitType;//��ְ����
    
    private String quitReason;//��ְԭ��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastSalaryTime;//���ʽ�ֹʱ��

    private String trace;//ȥ��

    private String remark;//��ע

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date quitTimeFact;//ʵ����ְ����

    private int materialsCondition;//��Ʒ�������

    private String despacho;//��ʾ                            

    private String despachoPerson;//��ʾ��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date addTime;//�Ǽ�ʱ��

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date lastUpdateTime;//����޸�ʱ��

    private int attachmentId;//����

    private String attachmentName;//��������

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date applicationDate;//��������

    private int salary;//����н��

    private int tement;//�Ƿ�ְ

    private int isBlacklist;//������

	public int getLeaveId() {
		return leaveId;
	}

	public void setLeaveId(int leaveId) {
		this.leaveId = leaveId;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(int departmentid) {
		this.departmentid = departmentid;
	}

	public int getPositionid() {
		return positionid;
	}

	public void setPositionid(int positionid) {
		this.positionid = positionid;
	}

	public int getStaStaffId() {
		return staStaffId;
	}

	public void setStaStaffId(int staStaffId) {
		this.staStaffId = staStaffId;
	}

	public Date getQuitTimePlan() {
		return quitTimePlan;
	}

	public void setQuitTimePlan(Date quitTimePlan) {
		this.quitTimePlan = quitTimePlan;
	}

	public int getQuitType() {
		return quitType;
	}

	public void setQuitType(int quitType) {
		this.quitType = quitType;
	}

	public String getQuitReason() {
		return quitReason;
	}

	public void setQuitReason(String quitReason) {
		this.quitReason = quitReason;
	}

	public Date getLastSalaryTime() {
		return lastSalaryTime;
	}

	public void setLastSalaryTime(Date lastSalaryTime) {
		this.lastSalaryTime = lastSalaryTime;
	}

	public String getTrace() {
		return trace;
	}

	public void setTrace(String trace) {
		this.trace = trace;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public Date getQuitTimeFact() {
		return quitTimeFact;
	}

	public void setQuitTimeFact(Date quitTimeFact) {
		this.quitTimeFact = quitTimeFact;
	}

	public int getMaterialsCondition() {
		return materialsCondition;
	}

	public void setMaterialsCondition(int materialsCondition) {
		this.materialsCondition = materialsCondition;
	}

	public String getDespacho() {
		return despacho;
	}

	public void setDespacho(String despacho) {
		this.despacho = despacho;
	}

	public String getDespachoPerson() {
		return despachoPerson;
	}

	public void setDespachoPerson(String despachoPerson) {
		this.despachoPerson = despachoPerson;
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

	public int getAttachmentId() {
		return attachmentId;
	}

	public void setAttachmentId(int attachmentId) {
		this.attachmentId = attachmentId;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}

	public Date getApplicationDate() {
		return applicationDate;
	}

	public void setApplicationDate(Date applicationDate) {
		this.applicationDate = applicationDate;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	public int getTement() {
		return tement;
	}

	public void setTement(int tement) {
		this.tement = tement;
	}

	public int getIsBlacklist() {
		return isBlacklist;
	}

	public void setIsBlacklist(int isBlacklist) {
		this.isBlacklist = isBlacklist;
	}

	


    
    
}