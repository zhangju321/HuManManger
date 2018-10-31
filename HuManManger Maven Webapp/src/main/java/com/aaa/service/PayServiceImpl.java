package com.aaa.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.aaa.dao.PayDao;
import com.aaa.entity.Check;
import com.aaa.entity.Pay;
import com.aaa.entity.Staff_info;


@Service
public class PayServiceImpl implements PayService{
@Autowired
private PayDao dao;

	
@Transactional
public int paySave(Pay pay) {
	// TODO Auto-generated method stub
	return dao.paySave(pay);
}
	
	@Override
	public List<Map<String, Object>> queryAll() {
		// TODO Auto-generated method stub
		return dao.queryAll();
	}
	@Transactional
	public int checkUpdate(Check check) {
		// TODO Auto-generated method stub
		return dao.checkUpdate(check);
	}
	@Override
	public List<Map<String, Object>> queryAll2() {
		// TODO Auto-generated method stub
		return dao.queryAll2();
	}
	@Override
	public List<Map<String, Object>> queryPeo() {
		// TODO Auto-generated method stub
		return dao.queryPeo();
	}
	@Override
	public List<Map<String, Object>> queryId(int id) {
		// TODO Auto-generated method stub
		return dao.queryId(id);
	}
	@Override
	public List<Map<String, Object>> queryAll3() {
		// TODO Auto-generated method stub
		return dao.queryAll3();
	}
	@Override
	public List<Map<String, Object>> queryCheck() {
		// TODO Auto-generated method stub
		return dao.queryCheck();
	}




	@Override
	public List<Check> queryCheckid(int id) {
		// TODO Auto-generated method stub
		return dao.queryCheckid(id);
	}

	@Override
	public List<Map<String, Object>> queryPay() {
		// TODO Auto-generated method stub
		return dao.queryPay();
	}

	@Transactional
	public int payUpdate(Pay pay) {
		// TODO Auto-generated method stub
		return dao.payUpdate(pay);
	}

	@Override
	public void payDelete(Pay pay) {
		// TODO Auto-generated method stub
		dao.payDelete(pay);
	}

	@Override
	public List<Map<String, Object>> queryPayId(int id) {
		// TODO Auto-generated method stub
		return dao.queryPayId(id);
	}
	

	
	
	


}
