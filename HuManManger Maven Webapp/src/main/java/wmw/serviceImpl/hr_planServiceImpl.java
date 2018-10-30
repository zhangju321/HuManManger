package wmw.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wmw.dao.hr_planMapper;
import wmw.entity.hr_plan;
import wmw.service.hr_planService;
@Service
public class hr_planServiceImpl implements hr_planService {
@Autowired
private hr_planMapper dao;
	@Override
	public List<Map<String,Object>> Select() {
		return dao.QueryAll();
	}
	@Override
	public void Save(hr_plan plan) {
		dao.Save(plan);
	}
	@Override
	public List<Map<String,Object>> QueryId(int planNo) {
		return dao.QueryId(planNo);
	}
	@Override
	public int Update(hr_plan plan) {
		return dao.Update(plan);
	}
	/*��ѯ״̬*/
	@Override
	public List<Map<String, Object>> Queryzero(int planStatus) {
		return dao.Querystatus(planStatus);
	}
	@Override
	public int oneupdae(int planNo) {
	return dao.oneupdate(planNo);	
	}
	public int twoupdae(int planNo) {
	     return dao.twoupdate(planNo);		
		}
	@Override
	public int Delete(int planNo) {
		return dao.Delete(planNo);
	}


}
