package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;

public interface staff_reinstatementService {
	@Transactional
	//ɾ��
	public int deleteRein(int reinstatementId);
	//��ѯ��ְ��
	public List<Map<String,Object>> selectRein();
    //�޸�ǰ��ѯ
	public staff_reinstatement selectReinid(int reinstatementId);
	//�޸ĺ����   �޸���ְ״̬   �����ְ��ʱ��Ѹ�ְ�������ɾ��
	public int insertorupdate(staff_reinstatement Rein);
    //��ѯ��ְԱ��
	public List<staff_info> selectinfostu();
    //��ѯԱ��
	public List<staff_info> selectstaffinfo();
	//��ѯ����
	public List<department> selectdepartment();
	//��ѯְ��
	public List<position> selectposition();
}
