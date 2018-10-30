package wmw.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import wmw.entity.hr_filter;
import wmw.service.hr_filterService;

@Controller
@RequestMapping("/filter")
public class hr_filterController {
@Autowired
private hr_filterService service;
@ResponseBody
@RequestMapping("/filtersave")
public void Save(hr_filter filter){
	service.saveFilter(filter);
}
/*��ѯȫ����Ƹ�ƻ�*/
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> selectFilter(){
	return service.selectFilter();
}
/*����id��ѯ*/
@RequestMapping("/filterId")
@ResponseBody
public List<Map<String,Object>> selectId(@RequestBody int filterId){

	return service.selectId(filterId);
}
/*�޸�*/
@RequestMapping("/filterUpdate")
@ResponseBody
public int updateFilter(hr_filter filter){
	return service.updateFilter(filter);
}
/*��һ��ɸѡ*/
@ResponseBody
@RequestMapping("/filterOneUpdate")
public void oneSave(hr_filter filter){
	service.oneUpdate(filter);
}
/*�ڶ���ɸѡ*/
@ResponseBody
@RequestMapping("/filterTwoUpdate")
public void twoSave(hr_filter filter){
	System.out.println(123);
	System.out.println(filter);
	service.twoUpdate(filter);
}
/*ɾ��*/
@ResponseBody
@RequestMapping("/filterDelete")
public int planDelete(@RequestBody int filterId){
	return service.Delete(filterId);
}
}