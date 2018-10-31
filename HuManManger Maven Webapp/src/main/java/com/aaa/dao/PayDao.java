package com.aaa.dao;

import java.util.List;
import java.util.Map;

import com.aaa.entity.Check;
import com.aaa.entity.Pay;
import com.aaa.entity.Staff_info;

public interface PayDao {

 public List<Map<String,Object>> queryAll();//��ѯн��(����)
 public List<Map<String,Object>> queryPeo();//��ѯȫ������ְ����Ա����
 public List<Map<String,Object>> queryCheck();///��ѯн�ʱ�׼�Ϳ��ڴ���
 public List<Map<String,Object>> queryId(int id);//������ѯ����ְ����Ա
 public int checkUpdate(Check check);//�޸Ŀ��ڿۿ��׼
 public List<Check> queryCheckid(int id);//������ѯcheck��
 public List<Map<String,Object>> queryAll2();//���ϲ�ѯ����ͳ�ƺͿ��ڿۿ��׼
 public List<Map<String, Object>> queryAll3();//����
 
 public List<Map<String,Object>> queryPay();//��ѯн�ʸ����ܶ�
 public int paySave(Pay pay);//���н�ʻ�������
 public int payUpdate(Pay pay);//�޸�н��
 public void payDelete(Pay pay);//ɾ��н��
 public List<Map<String,Object>> queryPayId(int id);//��ѯ��������
 public int queryStaffid(int id);//��ѯ��Ա���
 /*public int queryPay(int id);*///��ѯн�ʱ���
}
