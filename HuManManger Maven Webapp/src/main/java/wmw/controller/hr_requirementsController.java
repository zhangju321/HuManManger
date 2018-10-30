package wmw.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import wmw.entity.hr_requirements;
import wmw.service.hr_requirementsService;

@Controller
@RequestMapping("/require")
public class hr_requirementsController {
@Autowired
private hr_requirementsService service;
@RequestMapping("/select")
@ResponseBody
public List<Map<String,Object>> select(){
	List<Map<String,Object>> list=service.queryAll();
	return list;
}

}
