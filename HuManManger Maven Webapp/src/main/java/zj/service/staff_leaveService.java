package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_leave;

public interface staff_leaveService {
	@Transactional
    //��Ӻ��޸�   �޸���ְ״̬   �����ְ��ʱ��Ѹ�ְ�������ɾ��
	public int insertorupdate(staff_leave leave);
    //ɾ��
	public int deleteleave(int leaveId);
    //ͨ��map������ϲ�ѯ��������ʵ����
	public List<Map<String, Object>> selectleave();
    //�޸�ǰ��ѯ��������
	public staff_leave selectleaveByID(int leaveId);
    //��ѯ��ְԱ��
	public List<staff_info> selectinfostu();
    //��ѯԱ��
	public List<staff_info> selectstaffinfo();
	//��ѯ����
	public List<department> selectdepartment();
	//��ѯְ��
	public List<position> selectposition();

}
