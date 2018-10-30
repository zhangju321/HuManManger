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
import wmw.entity.hr_pool;
import wmw.service.hr_filterService;
import wmw.service.hr_poolService;

@Controller
@RequestMapping("/pool")
public class hr_poolController {
@Autowired
private hr_poolService service;
@ResponseBody
@RequestMapping("/select")
public List<Map<String,Object>> selectPool(){
	return service.selectPool();
}
}