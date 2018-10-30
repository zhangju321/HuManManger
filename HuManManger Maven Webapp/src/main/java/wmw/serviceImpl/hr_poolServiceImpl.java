package wmw.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import wmw.dao.hr_poolMapper;
import wmw.service.hr_poolService;
@Service
public class hr_poolServiceImpl implements hr_poolService {
@Autowired
private hr_poolMapper dao;
	@Override
	public List<Map<String, Object>> selectPool() {

		return dao.selectPool();
	}

}
