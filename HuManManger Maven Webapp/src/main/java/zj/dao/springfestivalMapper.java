package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.springfestival;

public interface springfestivalMapper {
	//��ѯ
	public List<Map<String, Object>> sfFind();
    //���
	public int sfSave(springfestival sf);
	//ɾ��
	public int sfDelete(springfestival sf);
	//�޸�
	public int sfUpdate(springfestival sf);
	//����id��ѯ
	public springfestival sfFindById(int sfId);
}