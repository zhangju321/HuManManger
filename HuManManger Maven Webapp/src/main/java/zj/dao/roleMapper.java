package zj.dao;

import zj.entity.role;

public interface roleMapper {
    int deleteByPrimaryKey(Integer roleid);

    int insert(role record);

    int insertSelective(role record);

    role selectByPrimaryKey(Integer roleid);

    int updateByPrimaryKeySelective(role record);

    int updateByPrimaryKey(role record);
}