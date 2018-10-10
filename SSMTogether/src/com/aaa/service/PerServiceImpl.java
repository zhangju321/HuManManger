package com.aaa.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.aaa.dao.PerDao;
import com.aaa.entity.Person;
@Service
public class PerServiceImpl implements PerService {

	@Autowired
	private PerDao dao;
	@Override
	public List<Person> find() {
		// TODO Auto-generated method stub
		return dao.find();
	}

	@Override
	public int save(Person p) {
		// TODO Auto-generated method stub
		return dao.save(p);
	}

}
