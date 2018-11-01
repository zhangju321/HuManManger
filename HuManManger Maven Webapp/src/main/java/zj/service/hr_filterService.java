package zj.service;

import java.util.List;
import java.util.Map;

import zj.entity.hr_filter;
import zj.entity.hr_plan;

public interface hr_filterService {
	public int saveFilter(hr_filter filter);
	public List<Map<String,Object>> selectFilter();
    public List<Map<String,Object>> selectId(int filterId);
    public int updateFilter(hr_filter filter);
    public int Delete(int filterId);
    public int oneUpdate(hr_filter filter);
    public int twoUpdate(hr_filter filter);

}
