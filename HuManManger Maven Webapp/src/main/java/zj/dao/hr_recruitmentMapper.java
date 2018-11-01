package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_filter;
import zj.entity.hr_recruitment;

public interface hr_recruitmentMapper {
	public List<Map<String,Object>> QueryAll();
	public int Save(hr_recruitment recru);
	public List<Map<String,Object>> QueryId(int recruitmentId);
	public int Update(hr_recruitment recru);
	public int Delete(int recruitmentId);
	public List<Map<String,Object>> Queryfilter(hr_filter filter);
}