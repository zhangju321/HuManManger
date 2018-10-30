package lkm.dao;

import lkm.entity.department;

public interface departmentMapper {
    int deleteByPrimaryKey(Integer departmentid);

    int insert(department record);

    int insertSelective(department record);

    department selectByPrimaryKey(Integer departmentid);

    int updateByPrimaryKeySelective(department record);

    int updateByPrimaryKey(department record);
}