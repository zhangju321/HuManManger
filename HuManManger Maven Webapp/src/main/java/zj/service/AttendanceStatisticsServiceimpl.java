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
	//����ͳ��
	public List<Map<String, Object>> selectas() {
		// TODO Auto-generated method stub
		return as.selectas();
	}

	@Override
	public void Details(int staffid) {
		//��ѯ���
		as.selectout(staffid);
		//��ѯ����
		as.selecttra(staffid);
		//��ѯ���°�Ǽ�
		as.selectreg(staffid);
		//��ѯ���
		as.selectvoc(staffid);
		
		
	}
	

}
