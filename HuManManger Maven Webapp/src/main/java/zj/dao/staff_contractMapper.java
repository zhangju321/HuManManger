package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_contract;
import zj.entity.staff_info;

public interface staff_contractMapper {
	//��Ӻ�ͬ
	public int insert(staff_contract contract);
	//ɾ��
	public int delete(int contractId);
	//��ѯ��ͬ��Ϣ
	public List<Map<String,Object>> selectcontract();
    //�޸�ǰ��ѯ
	public staff_contract selectByID(int contractId);
	//�޸�
	public int update(staff_contract contract);
    //��ѯԱ��
	public List<staff_info> selectstaffinfo();

}