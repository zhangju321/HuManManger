package com.aaa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.Department;
import com.aaa.entity.Project;
import com.aaa.entity.Welfare;
import com.aaa.service.WelfareService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/welfare")
public class WelfareController {
@Autowired
private WelfareService ser;
//��ѯ����
@RequestMapping("/queryWelfare")
@ResponseBody
public PageInfo<Map<String, Object>> queryWelfare(@RequestParam(required =false, defaultValue = "1") Integer startPage){
	PageHelper.startPage(startPage, 5);
	 List<Map<String, Object>> list=ser.queryWelfare();
	 PageInfo<Map<String, Object>> pi2 = new PageInfo<>(list);
	 return pi2;	
}

//��ѯ����
@RequestMapping("/queryDepar")
@ResponseBody
public PageInfo<Map<String, Object>> queryDepar(@RequestParam(required =false, defaultValue = "1") Integer startPage){
	PageHelper.startPage(startPage, 5);
	 List<Map<String, Object>> list=ser.queryDepar();
	 PageInfo<Map<String, Object>> pi3 = new PageInfo<>(list);
	 return pi3;	
}

//��Ӹ���
@RequestMapping("/welfSave")
public void welfSave(Welfare welf,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
   ser.welfSave(welf);
   out.print("��ӳɹ�");
}
//ɾ��
@RequestMapping("/welfdelete")
public void welfdelete(Welfare welf,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
	ser.welfDlete(welf);
	out.print("ɾ���ɹ�");
}

//������ѯ
@RequestMapping("/queryid")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int id){
	List<Map<String,Object>> list3=ser.queryWelfare2(id);
	return list3;
	
}
//�޸�
@RequestMapping("/welfupdate")
public void welfupdate(Welfare welf,HttpServletResponse response) throws IOException{
	response.setContentType("text/html;charset=utf-8");
	PrintWriter out=response.getWriter();
   ser.welfUpdate(welf);
   out.print("�޸ĳɹ�");
}
}
