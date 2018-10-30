package zj.entity;

import java.util.List;

public class role {
    private Integer roleId;

    private String roleName;

   
    
    private List<attend_schedule> schedules;
    
	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public String getRoleName() {
		return roleName;
	}

	public void setRoleName(String roleName) {
		this.roleName = roleName;
	}

	public List<attend_schedule> getSchedules() {
		return schedules;
	}

	public void setSchedules(List<attend_schedule> schedules) {
		this.schedules = schedules;
	}

	
   
}