package zj.dao;

import java.util.List;
import java.util.Map;

import zj.entity.hr_go_out;
import zj.entity.travel;
import zj.entity.vocation;
import zj.entity.work_register;

public interface AttendanceStatistics {
	
	//����ͳ��
	public List<Map<String,Object>> selectas();
	//����id��ѯ�����
	public List<hr_go_out> selectout(int staffid);
	//����id��ѯ�����
	public List<travel> selecttra(int staffid);
	//����id��ѯ��ٱ�
	public List<vocation> selectvoc(int staffid);
	//����id��ѯ�ϰ�ǼǱ�
	public List<work_register> selectreg(int staffid);

}
