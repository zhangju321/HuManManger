package wmw.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wmw.dao.hr_requirementsMapper;
import wmw.entity.hr_requirements;
import wmw.service.hr_requirementsService;
@Service
public class hr_requirementsServiceImpl implements hr_requirementsService {
@Autowired
private hr_requirementsMapper dao;
	@Override
	public List<Map<String,Object>> queryAll() {
		return dao.select();
	}
}
