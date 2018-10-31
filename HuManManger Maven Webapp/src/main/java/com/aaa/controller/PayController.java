package com.aaa.controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.aaa.entity.Check;
import com.aaa.entity.Pay;
import com.aaa.entity.Project;
import com.aaa.entity.Staff_info;
import com.aaa.entity.Welfare;
import com.aaa.service.PayService;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

@Controller
@RequestMapping("/pay")
public class PayController {
	@Autowired
	private PayService ser;
	
	
	//н�ʻ��������
	@RequestMapping("/psave")
	public void save(Pay pay,HttpServletResponse response) throws IOException{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
	    ser.paySave(pay);
	    out.print("��ӳɹ�");
	}
	//pay��ѯ
	@RequestMapping("/queryAll")
	@ResponseBody
	public List<Map<String, Object>> queryAll(){
		
		List<Map<String, Object>> list=ser.queryAll();
		return list;
		
	}


	//��ѯн�ʿۿ��׼�Ϳ���ͳ��
	@RequestMapping("/queryAll2")
	@ResponseBody
	public PageInfo<Map<String, Object>> queryAll2(@RequestParam(required =false, defaultValue = "1") Integer startPage){
		PageHelper.startPage(startPage, 5);
		 List<Map<String, Object>> list=ser.queryAll2();
		 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
		 return pi;
		/*List<Map<String, Object>> list=ser.queryAll2();
		return list;*/
		
	}
	//��ѯ����ְ����Ա����
	@RequestMapping("/queryPeo")
	@ResponseBody
	public List<Map<String, Object>> queryPeo(){
		System.out.println("ddd");
		List<Map<String, Object>> list=ser.queryPeo();
		return list;
		
	}
	
	//��ѯ��������ְ����Ա����
			@RequestMapping("/queryid")
			@ResponseBody
			public List<Map<String,Object>> query(@RequestBody int id){
				List<Map<String,Object>> list2=ser.queryId(id);
				return list2;
			}
			
			
			
			@RequestMapping("/queryAll3")
			@ResponseBody
			public List<Map<String, Object>> queryAll3(){
				
				List<Map<String, Object>> list3=ser.queryAll3();
				return list3;
				
			}
			//��ѯ���ڿۿ��׼��
			@RequestMapping("/querycheck")
			@ResponseBody
			public List<Map<String, Object>> querycheck(){
				
				List<Map<String, Object>> listcheck=ser.queryCheck();
				return listcheck;
				
			}
			
			//��ѯ���ڿۿ��׼��
			@RequestMapping("/querypay")
			@ResponseBody
			public PageInfo<Map<String, Object>> querypay(@RequestParam(required =false, defaultValue = "1") Integer startPage){
				PageHelper.startPage(startPage, 5);
				 List<Map<String, Object>> list=ser.queryPay();
				 PageInfo<Map<String, Object>> pi2 = new PageInfo<>(list);
				 return pi2;	
			}
			
			//�޸�н��
			@RequestMapping("/payupdate")
			public void payupdate(Pay pay,HttpServletResponse response) throws IOException{
				System.out.println("�޸�");
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
			   ser.payUpdate(pay);
			   out.print("�޸ĳɹ�");
			}
			//ɾ��н��
			@RequestMapping("/paydelete")
			public void paydelete(Pay pay,HttpServletResponse response) throws IOException{
				response.setContentType("text/html;charset=utf-8");
				PrintWriter out=response.getWriter();
				ser.payDelete(pay);
				out.print("ɾ���ɹ�");
			}
			
			//������ѯ
			@RequestMapping("/querypayid")
			@ResponseBody
			public List<Map<String,Object>> queryPayId(@RequestBody int id){
				List<Map<String,Object>> listpayid=ser.queryPayId(id);
				System.out.println(id);
				System.out.println(listpayid);
				return listpayid;
				
			}
			
}
