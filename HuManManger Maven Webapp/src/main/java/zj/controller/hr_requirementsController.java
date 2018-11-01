package zj.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import zj.entity.hr_plan;
import zj.entity.hr_requirements;
import zj.service.hr_requirementsService;

@Controller
@RequestMapping("/require")
public class hr_requirementsController {
@Autowired
private hr_requirementsService service;
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> select(){
	return service.queryAll();
}
/*����id��ѯ*/
@RequestMapping("/queryId")
@ResponseBody
public List<Map<String,Object>> queryId(@RequestBody int requId){
	return service.QueryId(requId);
}
/*�޸�*/
@ResponseBody
@RequestMapping("/requUpdate")
public int planUpdate(hr_requirements requ){
	return service.Update(requ);
}
/*ɾ��*/
@ResponseBody
@RequestMapping("/requDelete")
public int planDelete(@RequestBody int requId){
	return service.Delete(requId);
}
/*�����Ƹ����*/
@ResponseBody
@RequestMapping("/requSave")
public int plansave(hr_requirements requ){
	return service.Save(requ);
}
}
