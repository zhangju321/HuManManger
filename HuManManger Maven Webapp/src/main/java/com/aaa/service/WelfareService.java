package com.aaa.service;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Department;
import com.aaa.entity.Welfare;

public interface WelfareService {
	public List<Map<String,Object>> queryWelfare();//��ѯ�������ñ�
	 public void welfSave(Welfare welf);//��� 
	 public List<Map<String,Object>> queryDepar();//��ѯ���� ����
	 public void welfDlete(Welfare welf);//ɾ��
	 public void welfUpdate(Welfare welf);//�޸�
	 public List<Map<String,Object>> queryWelfare2(int id);//�����޸Ĳ�ѯ
}
