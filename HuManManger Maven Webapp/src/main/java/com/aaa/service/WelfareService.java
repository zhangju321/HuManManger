package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Department;
import com.aaa.entity.Welfare;

public interface WelfareService {
	public List<Map<String,Object>> queryWelfare();//查询福利设置表
	 public void welfSave(Welfare welf);//添加 
	 public List<Map<String,Object>> queryDepar();//查询部门 人事
	 public void welfDlete(Welfare welf);//删除
	 public void welfUpdate(Welfare welf);//修改
	 public List<Map<String,Object>> queryWelfare2(int id);//单条修改查询
}
