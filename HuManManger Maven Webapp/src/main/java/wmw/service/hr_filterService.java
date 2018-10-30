package wmw.service;

import java.util.List;
import java.util.Map;

import wmw.entity.hr_filter;
import wmw.entity.hr_plan;

public interface hr_filterService {
	public void saveFilter(hr_filter filter);
	public List<Map<String,Object>> selectFilter();
    public List<Map<String,Object>> selectId(int filterId);
    public int updateFilter(hr_filter filter);
    public int Delete(int filterId);
    public int oneUpdate(hr_filter filter);
    public int twoUpdate(hr_filter filter);

}
