package zj.controller;

import java.util.List;
import java.util.Map;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.hr_plan;
import zj.service.hr_planService;

@Controller
@RequestMapping("/plan")
public class hr_planController {
@Autowired
private hr_planService service;
/*��ѯȫ����Ƹ�ƻ�*/
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> select(){
	List<Map<String,Object>> list=service.Select();
	return list;
}
/*�����Ƹ�ƻ�*/
@ResponseBody
@RequestMapping("/planSave")
public int plansave(hr_plan plan){
	return service.Save(plan);
}
/*����id��ѯ*/
@RequestMapping("/queryId")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int planNo){
	List<Map<String,Object>> list=service.QueryId(planNo);
	return list;
}
/*�޸�*/
@ResponseBody
@RequestMapping("/planUpdate")
public int planUpdate(hr_plan plan){
    int a=0;
	a=service.Update(plan);
	return a;
}
/*ɾ��*/
@ResponseBody
@RequestMapping("/planDelete")
public int planDelete(@RequestBody int planNo){
    int a=0;
	a=service.Delete(planNo);
	return a;
}
/*������*/
@RequestMapping("/querystatus")
@ResponseBody
public List<Map<String,Object>> Queryzero(@RequestBody int planStatus){
	List<Map<String,Object>> list=service.Queryzero(planStatus);
	return list;
}
@RequestMapping("/oneupdate")
@ResponseBody
public int oneupdate(@RequestBody int planNo){
	return service.oneupdae(planNo);
}
@RequestMapping("/twoupdate")
@ResponseBody
public int twoupdate(@RequestBody int planNo){
	return service.twoupdae(planNo);
}
}