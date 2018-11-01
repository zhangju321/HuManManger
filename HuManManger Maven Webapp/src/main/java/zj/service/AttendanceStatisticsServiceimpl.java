package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.AttendanceStatistics;
@Service
public class AttendanceStatisticsServiceimpl implements AttendanceStatisticsService{
	@Autowired
	private AttendanceStatistics as;

	@Override
	//考勤统计
	public List<Map<String, Object>> selectas() {
		// TODO Auto-generated method stub
		return as.selectas();
	}

	@Override
	public void Details(int staffid) {
		//查询外出
		as.selectout(staffid);
		//查询出差
		as.selecttra(staffid);
		//查询上下班登记
		as.selectreg(staffid);
		//查询请假
		as.selectvoc(staffid);
		
		
	}
	

}
