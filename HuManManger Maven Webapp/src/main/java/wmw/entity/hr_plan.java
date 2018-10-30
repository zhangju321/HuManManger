package wmw.entity;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

public class hr_plan {
    private int planNo;
    private String planName;
    private String recruitDept;
    private String recruitPosition;
    private int planRecrNo;
    private String planDitch;
    private Double planBcws;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date startDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date endDate;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date workDate;
    private Double salaryArea;
    private String positionRequire;
    private String recruitDirection;
    private String recruitRemark;
    private String registerTime;
    private int planStatus;
    private String attachmentName;
    private String approvePerson;
    @DateTimeFormat(pattern="yyyy-MM-dd")
    private Date approveDate;
    private String approveComment;
    private List<hr_filter> filter;
	public int getPlanNo() {
		return planNo;
	}
	public void setPlanNo(int planNo) {
		this.planNo = planNo;
	}
	public String getPlanName() {
		return planName;
	}
	public void setPlanName(String planName) {
		this.planName = planName;
	}
	public String getRecruitDept() {
		return recruitDept;
	}
	public void setRecruitDept(String recruitDept) {
		this.recruitDept = recruitDept;
	}
	public String getRecruitPosition() {
		return recruitPosition;
	}
	public void setRecruitPosition(String recruitPosition) {
		this.recruitPosition = recruitPosition;
	}
	public int getPlanRecrNo() {
		return planRecrNo;
	}
	public void setPlanRecrNo(int planRecrNo) {
		this.planRecrNo = planRecrNo;
	}
	public String getPlanDitch() {
		return planDitch;
	}
	public void setPlanDitch(String planDitch) {
		this.planDitch = planDitch;
	}
	public Double getPlanBcws() {
		return planBcws;
	}
	public void setPlanBcws(Double planBcws) {
		this.planBcws = planBcws;
	}
	public Date getStartDate() {
		return startDate;
	}
	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}
	public Date getEndDate() {
		return endDate;
	}
	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}
	public Date getWorkDate() {
		return workDate;
	}
	public void setWorkDate(Date workDate) {
		this.workDate = workDate;
	}
	public Double getSalaryArea() {
		return salaryArea;
	}
	public void setSalaryArea(Double salaryArea) {
		this.salaryArea = salaryArea;
	}
	public String getPositionRequire() {
		return positionRequire;
	}
	public void setPositionRequire(String positionRequire) {
		this.positionRequire = positionRequire;
	}
	public String getRecruitDirection() {
		return recruitDirection;
	}
	public void setRecruitDirection(String recruitDirection) {
		this.recruitDirection = recruitDirection;
	}
	public String getRecruitRemark() {
		return recruitRemark;
	}
	public void setRecruitRemark(String recruitRemark) {
		this.recruitRemark = recruitRemark;
	}
	public String getRegisterTime() {
		return registerTime;
	}
	public void setRegisterTime(String registerTime) {
		this.registerTime = registerTime;
	}
	public int getPlanStatus() {
		return planStatus;
	}
	public void setPlanStatus(int planStatus) {
		this.planStatus = planStatus;
	}
	public String getAttachmentName() {
		return attachmentName;
	}
	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}
	public String getApprovePerson() {
		return approvePerson;
	}
	public void setApprovePerson(String approvePerson) {
		this.approvePerson = approvePerson;
	}
	public Date getApproveDate() {
		return approveDate;
	}
	public void setApproveDate(Date approveDate) {
		this.approveDate = approveDate;
	}
	public String getApproveComment() {
		return approveComment;
	}
	public void setApproveComment(String approveComment) {
		this.approveComment = approveComment;
	}
	public List<hr_filter> getFilter() {
		return filter;
	}
	public void setFilter(List<hr_filter> filter) {
		this.filter = filter;
	}
	@Override
	public String toString() {
		return "hr_plan [planNo=" + planNo + ", planName=" + planName + ", recruitDept=" + recruitDept
				+ ", recruitPosition=" + recruitPosition + ", planRecrNo=" + planRecrNo + ", planDitch=" + planDitch
				+ ", planBcws=" + planBcws + ", startDate=" + startDate + ", endDate=" + endDate + ", workDate="
				+ workDate + ", salaryArea=" + salaryArea + ", positionRequire=" + positionRequire
				+ ", recruitDirection=" + recruitDirection + ", recruitRemark=" + recruitRemark + ", registerTime="
				+ registerTime + ", planStatus=" + planStatus + ", attachmentName=" + attachmentName
				+ ", approvePerson=" + approvePerson + ", approveDate=" + approveDate + ", approveComment="
				+ approveComment + ", filter=" + filter + "]";
	}
	public hr_plan(int planNo, String planName, String recruitDept, String recruitPosition, int planRecrNo,
			String planDitch, Double planBcws, Date startDate, Date endDate, Date workDate, Double salaryArea,
			String positionRequire, String recruitDirection, String recruitRemark, String registerTime, int planStatus,
			String attachmentName, String approvePerson, Date approveDate, String approveComment,
			List<hr_filter> filter) {
		super();
		this.planNo = planNo;
		this.planName = planName;
		this.recruitDept = recruitDept;
		this.recruitPosition = recruitPosition;
		this.planRecrNo = planRecrNo;
		this.planDitch = planDitch;
		this.planBcws = planBcws;
		this.startDate = startDate;
		this.endDate = endDate;
		this.workDate = workDate;
		this.salaryArea = salaryArea;
		this.positionRequire = positionRequire;
		this.recruitDirection = recruitDirection;
		this.recruitRemark = recruitRemark;
		this.registerTime = registerTime;
		this.planStatus = planStatus;
		this.attachmentName = attachmentName;
		this.approvePerson = approvePerson;
		this.approveDate = approveDate;
		this.approveComment = approveComment;
		this.filter = filter;
	}
	public hr_plan() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}