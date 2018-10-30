package wmw.entity;

import java.util.Date;

public class hr_pool {
    private Integer expertId;
    private String employeeName;
	public Integer getExpertId() {
		return expertId;
	}
	public void setExpertId(Integer expertId) {
		this.expertId = expertId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public hr_pool(Integer expertId, String employeeName) {
		super();
		this.expertId = expertId;
		this.employeeName = employeeName;
	}
	public hr_pool() {
		super();
		// TODO Auto-generated constructor stub
	}

}