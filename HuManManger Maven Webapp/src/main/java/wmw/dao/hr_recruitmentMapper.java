package wmw.dao;

import wmw.entity.hr_recruitment;

public interface hr_recruitmentMapper {
    int deleteByPrimaryKey(Integer recruitmentId);

    int insert(hr_recruitment record);

    int insertSelective(hr_recruitment record);

    hr_recruitment selectByPrimaryKey(Integer recruitmentId);

    int updateByPrimaryKeySelective(hr_recruitment record);

    int updateByPrimaryKey(hr_recruitment record);
}