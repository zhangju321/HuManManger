package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_leave;

public interface staff_leaveMapper {
	
	public int insert(staff_leave leave);
	
	public int deleteleave(int leaveId);
	
	public List<Map<String,Object>> selectleave();

	public staff_leave selectleaveByID(int leaveId);
	
	public int updateleave(staff_leave leave);

    //��ѯ��ְԱ��
	public List<staff_info> selectinfostu();
    //��ѯԱ��
	public List<staff_info> selectstaffinfo();
	//��ѯ����
	public List<department> selectdepartment();
	//��ѯְ��
	public List<position> selectposition();
	//�޸���ְ״̬
	public int updateStatus(int staffId);
	//�����ְ��ʱ��Ѹ�ְ����ͬԱ��������ɾ��
	public int delectId(int staffId);
	
}