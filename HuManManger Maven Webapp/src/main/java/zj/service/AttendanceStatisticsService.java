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
	
	//����ͳ��
	public List<Map<String,Object>> selectas();
	//��ϸ��Ϣ ��ѯ����� ����� ��ٱ� ���°�ǼǱ�
	public void Details(int staffid);

}
