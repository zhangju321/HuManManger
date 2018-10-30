package zj.entity;

import java.util.List;

public class department {
    private Integer departmentId;

    private String departmentName;
    private List<attend_schedule> schedules;

	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public String getDepartmentName() {
		return departmentName;
	}

	public void setDepartmentName(String departmentName) {
		this.departmentName = departmentName;
	}

	public List<attend_schedule> getSchedules() {
		return schedules;
	}

	public void setSchedules(List<attend_schedule> schedules) {
		this.schedules = schedules;
	}

   
}