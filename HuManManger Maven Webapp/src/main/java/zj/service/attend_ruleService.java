package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.attend_rule;

public interface attend_ruleService {
	//��ѯ
		public List<Map<String, Object>> ruleFind();
	    //����޸�
		public int saveOrUpdate(attend_rule rule);
		//ɾ��
		public int ruleDelete(attend_rule rule);
		//����id��ѯ
		public attend_rule ruleFindById(int kid);
}
