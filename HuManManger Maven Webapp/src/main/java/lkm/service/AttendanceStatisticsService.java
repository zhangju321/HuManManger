package lkm.service;

import java.util.List;
import java.util.Map;

import org.springframework.transaction.annotation.Transactional;

import lkm.entity.hr_go_out;
import lkm.entity.travel;
import lkm.entity.vocation;
import lkm.entity.work_register;

public interface AttendanceStatisticsService {
	@Transactional
	
	//����ͳ��
	public List<Map<String,Object>> selectas();
	//��ϸ��Ϣ ��ѯ����� ����� ��ٱ� ���°�ǼǱ�
	public void Details(int staffid);

}
