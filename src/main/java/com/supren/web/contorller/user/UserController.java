package com.supren.web.contorller.user;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supren.domain.user.UserInfo;
import com.supren.service.user.UserInfoService;

@Controller
@RequestMapping(value="/userController")
public class UserController {

	@Autowired
	private UserInfoService userInfoService;
	
	@ModelAttribute
	@RequestMapping(value="get")
	public UserInfo get(UserInfo userInfo){
		
		UserInfo userInfo2 = null;
		if(userInfo.getId()!= null){
			userInfo2 = userInfoService.get(userInfo2.getId());
		}
		
		return userInfo;
	}
	
	@RequestMapping(value="findAll",method=RequestMethod.GET)
	public String findAll(Model model){
		List<UserInfo> list = new ArrayList<UserInfo>();
		
		list = userInfoService.findAllList();
		if(list.size() > 0 && !list.isEmpty()){
			model.addAttribute("UserInfo",list);
		}
		return "admin/annmanager_manage";
	}
	
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String save(UserInfo userInfo,Model model,HttpSession session,HttpServletRequest request){
		
		
		
		return null;
	}
}
