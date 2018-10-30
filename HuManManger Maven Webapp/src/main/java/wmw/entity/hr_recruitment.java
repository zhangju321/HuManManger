package wmw.entity;

import java.util.Date;

public class hr_recruitment {
    private Integer recruitmentId;

    private Integer planNo;

    private String assessingOfficer;

    private Date assPassTime;

    private String department;

    private String type;

    private String jobPosition;

    private String presentPosition;

    private Date onBoardingTime;

    private Date startingSalaryTime;

    private String remark;

    private String jobStatus;

    private String applyerName;

    private Integer expertId;

    public Integer getRecruitmentId() {
        return recruitmentId;
    }

    public void setRecruitmentId(Integer recruitmentId) {
        this.recruitmentId = recruitmentId;
    }

    public Integer getPlanNo() {
        return planNo;
    }

    public void setPlanNo(Integer planNo) {
        this.planNo = planNo;
    }

    public String getAssessingOfficer() {
        return assessingOfficer;
    }

    public void setAssessingOfficer(String assessingOfficer) {
        this.assessingOfficer = assessingOfficer == null ? null : assessingOfficer.trim();
    }

    public Date getAssPassTime() {
        return assPassTime;
    }

    public void setAssPassTime(Date assPassTime) {
        this.assPassTime = assPassTime;
    }

    public String getDepartment() {
        return department;
    }

    public void setDepartment(String department) {
        this.department = department == null ? null : department.trim();
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type == null ? null : type.trim();
    }

    public String getJobPosition() {
        return jobPosition;
    }

    public void setJobPosition(String jobPosition) {
        this.jobPosition = jobPosition == null ? null : jobPosition.trim();
    }

    public String getPresentPosition() {
        return presentPosition;
    }

    public void setPresentPosition(String presentPosition) {
        this.presentPosition = presentPosition == null ? null : presentPosition.trim();
    }

    public Date getOnBoardingTime() {
        return onBoardingTime;
    }

    public void setOnBoardingTime(Date onBoardingTime) {
        this.onBoardingTime = onBoardingTime;
    }

    public Date getStartingSalaryTime() {
        return startingSalaryTime;
    }

    public void setStartingSalaryTime(Date startingSalaryTime) {
        this.startingSalaryTime = startingSalaryTime;
    }

    public String getRemark() {
        return remark;
    }

    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    public String getJobStatus() {
        return jobStatus;
    }

    public void setJobStatus(String jobStatus) {
        this.jobStatus = jobStatus == null ? null : jobStatus.trim();
    }

    public String getApplyerName() {
        return applyerName;
    }

    public void setApplyerName(String applyerName) {
        this.applyerName = applyerName == null ? null : applyerName.trim();
    }

    public Integer getExpertId() {
        return expertId;
    }

    public void setExpertId(Integer expertId) {
        this.expertId = expertId;
    }
}