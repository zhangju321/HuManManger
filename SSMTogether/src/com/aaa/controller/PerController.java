package com.aaa.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.aaa.entity.Person;
import com.aaa.service.PerService;

@Controller
@RequestMapping("/person")
public class PerController {
@Autowired
private PerService ps;
@RequestMapping("/find")
 public String find(Person p,Map map){
	List<Person> list=ps.find();
	map.put("p", list);
	return "find";
	
}
@RequestMapping("/save")
public String save(Person p,Map map){
	ps.save(p);
	List<Person> list=ps.find();
	map.put("p",list);
	return "find";
	
}
}
