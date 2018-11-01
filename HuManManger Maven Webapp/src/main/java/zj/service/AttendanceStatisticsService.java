package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import zj.entity.hr_go_out;
import zj.entity.travel;
import zj.entity.vocation;
import zj.entity.work_register;

public interface AttendanceStatisticsService {
	@Transactional
	
	//考勤统计
	public List<Map<String,Object>> selectas();
	//详细信息 查询外出表 出差表 请假表 上下班登记表
	public void Details(int staffid);

}
