package zj.entity;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

public class work_register {//�ϰ�Ǽ�
    private int workId;

    private int departmentid;

    private int staffId;

    private int registerOrder;

    private String registerType;

    @DateTimeFormat(pattern="yyyy-MM-dd HH:mm:ss")
    private Date setTime;//�涨ʱ��

    private int registerIp;

    private int attendanceShould;//Ӧ����

    private int attendanceActual;//ʵ�ʳ���

    private int rest;//��Ϣ

    private int absenteeism;//����

    private int late;//�ٵ�

    private int workUnregistered;//�ϰ�δ�Ǽ�

    private int earlyRetreat;//����

    private int workOff;//�°�δ�Ǽ�

    private String workTime;//�ϰ�ʱ��

    private String workOfftime;//�°�ʱ��

	public int getWorkId() {
		return workId;
	}

	public void setWorkId(int workId) {
		this.workId = workId;
	}

	public int getDepartmentid() {
		return departmentid;
	}

	public void setDepartmentid(int departmentid) {
		this.departmentid = departmentid;
	}

	public int getStaffId() {
		return staffId;
	}

	public void setStaffId(int staffId) {
		this.staffId = staffId;
	}

	public int getRegisterOrder() {
		return registerOrder;
	}

	public void setRegisterOrder(int registerOrder) {
		this.registerOrder = registerOrder;
	}

	public String getRegisterType() {
		return registerType;
	}

	public void setRegisterType(String registerType) {
		this.registerType = registerType;
	}

	public Date getSetTime() {
		return setTime;
	}

	public void setSetTime(Date setTime) {
		this.setTime = setTime;
	}

	public int getRegisterIp() {
		return registerIp;
	}

	public void setRegisterIp(int registerIp) {
		this.registerIp = registerIp;
	}

	public int getAttendanceShould() {
		return attendanceShould;
	}

	public void setAttendanceShould(int attendanceShould) {
		this.attendanceShould = attendanceShould;
	}

	public int getAttendanceActual() {
		return attendanceActual;
	}

	public void setAttendanceActual(int attendanceActual) {
		this.attendanceActual = attendanceActual;
	}

	public int getRest() {
		return rest;
	}

	public void setRest(int rest) {
		this.rest = rest;
	}

	public int getAbsenteeism() {
		return absenteeism;
	}

	public void setAbsenteeism(int absenteeism) {
		this.absenteeism = absenteeism;
	}

	public int getLate() {
		return late;
	}

	public void setLate(int late) {
		this.late = late;
	}

	public int getWorkUnregistered() {
		return workUnregistered;
	}

	public void setWorkUnregistered(int workUnregistered) {
		this.workUnregistered = workUnregistered;
	}

	public int getEarlyRetreat() {
		return earlyRetreat;
	}

	public void setEarlyRetreat(int earlyRetreat) {
		this.earlyRetreat = earlyRetreat;
	}

	public int getWorkOff() {
		return workOff;
	}

	public void setWorkOff(int workOff) {
		this.workOff = workOff;
	}

	public String getWorkTime() {
		return workTime;
	}

	public void setWorkTime(String workTime) {
		this.workTime = workTime;
	}

	public String getWorkOfftime() {
		return workOfftime;
	}

	public void setWorkOfftime(String workOfftime) {
		this.workOfftime = workOfftime;
	}

	


}