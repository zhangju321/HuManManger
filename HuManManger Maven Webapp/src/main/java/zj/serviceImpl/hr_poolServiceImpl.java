package zj.serviceImpl;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import zj.dao.hr_poolMapper;
import zj.service.hr_poolService;
@Service
public class hr_poolServiceImpl implements hr_poolService {
@Autowired
private hr_poolMapper dao;
	@Override
	public List<Map<String, Object>> selectPool() {

		return dao.selectPool();
	}

}
