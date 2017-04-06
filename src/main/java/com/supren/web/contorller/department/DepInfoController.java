package com.supren.web.contorller.department;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supren.domain.department.DepartmentInfo;
import com.supren.service.department.DepInfoService;

@Controller
@RequestMapping(value="/DepInfoController")
public class DepInfoController {

	@Autowired
	private DepInfoService depInfoService;
	
	@ModelAttribute
	@RequestMapping(value="get")
	public DepartmentInfo get(DepartmentInfo departmentInfo){
		
		DepartmentInfo departmentInfo2 = null;
		if(departmentInfo.getId()!= null){
			departmentInfo2 = depInfoService.get(departmentInfo.getId());
		}	
		return departmentInfo2;
	}
	
	@RequestMapping(value="findAll",method=RequestMethod.GET)
	public String findAll(Model model){
		List<DepartmentInfo> list = new ArrayList<DepartmentInfo>();
		
		list = depInfoService.findAllList();
		if(list.size() > 0){
			model.addAttribute("DepartmentInfo",list);
		}
		return "admin/depart_manage";
	}
	
}
