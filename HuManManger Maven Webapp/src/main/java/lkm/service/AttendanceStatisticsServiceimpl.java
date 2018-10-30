package lkm.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import lkm.dao.AttendanceStatistics;
@Service
public class AttendanceStatisticsServiceimpl implements AttendanceStatisticsService{
	@Autowired
	private AttendanceStatistics as;

	@Override
	//¿¼ÇÚÍ³¼Æ
	public List<Map<String, Object>> selectas() {
		// TODO Auto-generated method stub
		return as.selectas();
	}
	

}
