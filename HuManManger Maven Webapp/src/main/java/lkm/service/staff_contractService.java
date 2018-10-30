package lkm.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import lkm.entity.staff_contract;
import lkm.entity.staff_info;

public interface staff_contractService {
	@Transactional
	//���Ӻ��޸�
	public int insertandupdate(staff_contract contract);
	//ɾ��
	public int delete(int contractId);
	//��ѯ��ͬ��Ϣ
	public List<Map<String,Object>> selectcontract();
    //�޸�ǰ��ѯ
	public staff_contract selectByID(int contractId);
    //��ѯԱ��
	public List<staff_info> selectstaffinfo();

}