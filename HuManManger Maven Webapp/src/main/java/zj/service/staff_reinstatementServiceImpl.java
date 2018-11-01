package zj.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.staff_reinstatementMapper;
import zj.entity.department;
import zj.entity.position;
import zj.entity.staff_info;
import zj.entity.staff_reinstatement;

@Service
public class staff_reinstatementServiceImpl implements staff_reinstatementService{
	@Autowired
	private staff_reinstatementMapper mapper;

	@Override
	public int deleteRein(int reinstatementId) {
		// TODO Auto-generated method stub
		return mapper.deleteRein(reinstatementId);
	}

	@Override
	public List<Map<String, Object>> selectRein() {
		// TODO Auto-generated method stub
		return mapper.selectRein();
	}

	@Override
	public staff_reinstatement selectReinid(int reinstatementId) {
		// TODO Auto-generated method stub
		return mapper.selectReinid(reinstatementId);
	}

	@Override
	//�޸� ��� �޸���ְ״̬
	public int insertorupdate(staff_reinstatement Rein) {
		// TODO Auto-generated method stub

		//�޸���ְ״̬
        mapper.updateStatus(Rein.getStaffId());
        //�ж��޸Ļ������
		if (Rein.getReinstatementId() != 0 && Rein.getReinstatementId() > 0) {
			return mapper.updateRein(Rein);
		}
        //����ְ���ʱ����ְ������ɾ��
        mapper.delectId(Rein.getStaffId());
		return mapper.insert(Rein);
		
	}

	@Override
	public List<staff_info> selectstaffinfo() {
		// TODO Auto-generated method stub
		return mapper.selectstaffinfo();
	}

	@Override
	public List<department> selectdepartment() {
		// TODO Auto-generated method stub
		return mapper.selectdepartment();
	}

	@Override
	public List<position> selectposition() {
		// TODO Auto-generated method stub
		return mapper.selectposition();
	}

	@Override
	public List<staff_info> selectinfostu() {
		// TODO Auto-generated method stub
		return mapper.selectinfostu();
	}
}
