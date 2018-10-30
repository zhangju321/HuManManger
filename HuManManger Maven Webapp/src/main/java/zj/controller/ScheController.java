package zj.controller;

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

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import zj.entity.attend_schedule;
import zj.service.attend_scheduleService;

@Controller
@RequestMapping("/attend_schedule")
public class ScheController {

	@Autowired
	private attend_scheduleService aScheduleService;
	
	@RequestMapping("/scheFind")
	@ResponseBody
	public PageInfo<Map<String, Object>> scheFind(@RequestParam(required = false, defaultValue = "1") Integer startPage){
		 PageHelper.startPage(startPage, 5);
		 List<Map<String, Object>> list=aScheduleService.scheFind();
		 PageInfo<Map<String, Object>> pi = new PageInfo<>(list);
		 return pi;
	}
	@RequestMapping("/saveOrUpdate")
	public void saveOrUpdate(@RequestBody attend_schedule schedule,HttpServletResponse response) throws IOException{
		response.setContentType("html/text;charset=utf-8");
		PrintWriter out=response.getWriter();
		aScheduleService.saveOrUpdate(schedule);
		
		out.print("ok");
	}
	@RequestMapping("/scheDelete")
	public void scheDelete(attend_schedule schedule,HttpServletResponse response) throws IOException{
		response.setContentType("html/text;charset=utf-8");
		PrintWriter out=response.getWriter();
		aScheduleService.scheDelete(schedule);
		out.print("��ɾ��");
	}
	@ResponseBody
	@RequestMapping("/scheFindById")
	public attend_schedule scheFindById(attend_schedule schedule){
		attend_schedule schedule2=aScheduleService.scheFindById(schedule.getId());
		return schedule2;
	}
	@RequestMapping("/updateState")
	public void updateState(attend_schedule schedule,HttpServletResponse response) throws IOException{
		response.setContentType("html/text;charset=utf-8");
		PrintWriter out=response.getWriter();
		aScheduleService.updateState(schedule);
		
	}
	@ResponseBody
	@RequestMapping("/roleFind")
	public List<Map<String, Object>> roleFind(){
	 List<Map<String, Object>> list=aScheduleService.roleFind();
	 return list;
	}
	@ResponseBody
	@RequestMapping("/departFind")
	public List<Map<String, Object>> departFind(){
	 List<Map<String, Object>> list=aScheduleService.departFind();
	 return list;
	}
	@ResponseBody
	@RequestMapping("/staffFind")
	public List<Map<String, Object>> staffFind(){
	 List<Map<String, Object>> list=aScheduleService.staffFind();
	 return list;
	}
}
