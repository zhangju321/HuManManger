package lkm.dao;

import java.util.List;
import java.util.Map;

import lkm.entity.department;
import lkm.entity.position;
import lkm.entity.staff_contract;
import lkm.entity.staff_info;

public interface staff_contractMapper {
	//添加合同
	public int insert(staff_contract contract);
	//删除
	public int delete(int contractId);
	//查询合同信息
	public List<Map<String,Object>> selectcontract();
    //修改前查询
	public staff_contract selectByID(int contractId);
	//修改
	public int update(staff_contract contract);
    //查询员工
	public List<staff_info> selectstaffinfo();

}