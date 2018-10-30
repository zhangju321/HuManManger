package zj.entity;


public class attend_schedule {
    private Integer id;
    private Integer departmentId;
    private Integer roleId;
    private Integer staff_id;
    private department de;
    private role ro;
    private staff_info staff;
    private String name;
    private Integer status;
    private String date_start;
    private String date_end;

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public department getDe() {
		return de;
	}

	public void setDe(department de) {
		this.de = de;
	}

	public role getRo() {
		return ro;
	}

	public void setRo(role ro) {
		this.ro = ro;
	}

	public staff_info getStaff() {
		return staff;
	}

	public void setStaff(staff_info staff) {
		this.staff = staff;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Integer getStatus() {
		return status;
	}

	public void setStatus(Integer status) {
		this.status = status;
	}

	public String getDate_start() {
		return date_start;
	}

	public void setDate_start(String date_start) {
		this.date_start = date_start;
	}

	public String getDate_end() {
		return date_end;
	}

	public void setDate_end(String date_end) {
		this.date_end = date_end;
	}

	
	public Integer getDepartmentId() {
		return departmentId;
	}

	public void setDepartmentId(Integer departmentId) {
		this.departmentId = departmentId;
	}

	public Integer getRoleId() {
		return roleId;
	}

	public void setRoleId(Integer roleId) {
		this.roleId = roleId;
	}

	public Integer getStaff_id() {
		return staff_id;
	}

	public void setStaff_id(Integer staff_id) {
		this.staff_id = staff_id;
	}

	public attend_schedule(Integer id, department de, role ro, staff_info staff, String name, Integer status,
			String date_start, String date_end) {
		super();
		this.id = id;
		this.de = de;
		this.ro = ro;
		this.staff = staff;
		this.name = name;
		this.status = status;
		this.date_start = date_start;
		this.date_end = date_end;
	}

	
	public attend_schedule(Integer id, department de, Integer departmentId, Integer roleId, Integer staff_id, role ro,
			staff_info staff, String name, Integer status, String date_start, String date_end) {
		super();
		this.id = id;
		this.de = de;
		this.departmentId = departmentId;
		this.roleId = roleId;
		this.staff_id = staff_id;
		this.ro = ro;
		this.staff = staff;
		this.name = name;
		this.status = status;
		this.date_start = date_start;
		this.date_end = date_end;
	}

	public attend_schedule() {
		super();
		// TODO Auto-generated constructor stub
	}

	
	




  
}