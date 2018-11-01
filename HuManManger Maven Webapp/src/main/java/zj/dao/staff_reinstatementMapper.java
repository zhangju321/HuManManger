package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;

public interface staff_reinstatementMapper {
	//���
	public int insert(staff_reinstatement Rein);
	//ɾ��
	public int deleteRein(int reinstatementId);
	//��ѯ��ְ��
	public List<Map<String,Object>> selectRein();
    //�޸�ǰ��ѯ
	public staff_reinstatement selectReinid(int reinstatementId);
	//�޸�
	public int updateRein(staff_reinstatement Rein);
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
	//��Ӹ�ְ��ʱ�����ְ�����ͬԱ������ɾ��
	public int delectId(int staffId);
}