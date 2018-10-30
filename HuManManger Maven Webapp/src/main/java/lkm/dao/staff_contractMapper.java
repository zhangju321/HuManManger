package lkm.dao;

import java.util.List;
import java.util.Map;

import lkm.entity.department;
import lkm.entity.position;
import lkm.entity.staff_contract;
import lkm.entity.staff_info;

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