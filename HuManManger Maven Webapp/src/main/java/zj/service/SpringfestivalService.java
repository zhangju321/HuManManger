package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.springfestival;

public interface SpringfestivalService {
	//��ѯ
		public List<Map<String, Object>> sfFind();
	    //���
		public int saveOrUpdate(springfestival sf);
		//ɾ��
		public int sfDelete(springfestival sf);
		//����id��ѯ
		public springfestival sfFindById(int SfId);
}
