package com.aaa.service;

import java.util.List;

import com.aaa.entity.Project;

public interface ProjectService {
	public void psave(Project p);//��project���������
	  public List<Project> findAll();//��ѯproject����ʾ
	  public int pupdate(Project p);//�޸�project��
	  public int pdelete(Project p);//ɾ��
	  public List<Project> selectid(int id);//������ѯ
}
