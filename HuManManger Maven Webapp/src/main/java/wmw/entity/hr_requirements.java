package wmw.entity;

import java.util.Date;

public class hr_requirements {
    private int requirementsId;

    private String requDept;

    private String requJob;

    private int requNum;

    private String requRequires;

    private Date requTime;

    private String petitioner;

    private String remark;

    private String attachmentName;

	public int getRequirementsId() {
		return requirementsId;
	}

	public void setRequirementsId(int requirementsId) {
		this.requirementsId = requirementsId;
	}

	public String getRequDept() {
		return requDept;
	}

	public void setRequDept(String requDept) {
		this.requDept = requDept;
	}

	public String getRequJob() {
		return requJob;
	}

	public void setRequJob(String requJob) {
		this.requJob = requJob;
	}

	public int getRequNum() {
		return requNum;
	}

	public void setRequNum(int requNum) {
		this.requNum = requNum;
	}

	public String getRequRequires() {
		return requRequires;
	}

	public void setRequRequires(String requRequires) {
		this.requRequires = requRequires;
	}

	public Date getRequTime() {
		return requTime;
	}

	public void setRequTime(Date requTime) {
		this.requTime = requTime;
	}

	public String getPetitioner() {
		return petitioner;
	}

	public void setPetitioner(String petitioner) {
		this.petitioner = petitioner;
	}

	public String getRemark() {
		return remark;
	}

	public void setRemark(String remark) {
		this.remark = remark;
	}

	public String getAttachmentName() {
		return attachmentName;
	}

	public void setAttachmentName(String attachmentName) {
		this.attachmentName = attachmentName;
	}

    
}