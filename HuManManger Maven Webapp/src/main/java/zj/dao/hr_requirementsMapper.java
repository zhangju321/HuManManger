package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_plan;
import zj.entity.hr_requirements;

public interface hr_requirementsMapper {
    public List<Map<String,Object>> select();
	public List<Map<String,Object>> QueryId(int requId);
	public int Update(hr_requirements requ);
	public int Delete(int requId);
	public int Save(hr_requirements requ);
}