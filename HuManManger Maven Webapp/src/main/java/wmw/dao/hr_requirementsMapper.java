package wmw.dao;

import java.util.List;
import java.util.Map;

import wmw.entity.hr_requirements;

public interface hr_requirementsMapper {
    int deleteByPrimaryKey(Integer requirementsId);

    int insert(hr_requirements record);

    int insertSelective(hr_requirements record);

    hr_requirements selectByPrimaryKey(Integer requirementsId);

    int updateByPrimaryKeySelective(hr_requirements record);

    int updateByPrimaryKeyWithBLOBs(hr_requirements record);

    int updateByPrimaryKey(hr_requirements record);
    
    public List<Map<String,Object>> select();
}