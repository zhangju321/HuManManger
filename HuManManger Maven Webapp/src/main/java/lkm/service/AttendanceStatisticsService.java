package lkm.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

public interface AttendanceStatisticsService {
	@Transactional
	
	//����ͳ��
	public List<Map<String,Object>> selectas();

}
