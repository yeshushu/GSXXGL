package com.supren.web.contorller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.supren.domain.user.UserInfo;
import com.supren.service.user.UserInfoService;
import com.supren.utils.StringUtils;

@Controller
public class LoginController {

	@Autowired
	private UserInfoService userInfoService;

	@RequestMapping("")
	public String index(){
		return "login";
	}
	
	/**
	 * 登录方法
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="login",method=RequestMethod.POST)
	public String login(UserInfo userInfo,Model model,HttpSession session,HttpServletRequest request) throws Exception{
		
		String username = userInfo.getUserName();
		String password = userInfo.getPassword();
		int role = userInfo.getUserRole();
		
		if(StringUtils.isBlank(password) || StringUtils.isBlank(username) ||StringUtils.isBlank(role+"")){
			model.addAttribute("msg","用户名或密码或角色为空！");
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "index";
		}
		
		//获取用户信息通过用户名


			UserInfo userInfo2 = userInfoService.findList(userInfo);
			
			if(null != userInfo2){
				session.setAttribute("User",userInfo2);	
				if(userInfo2.getUserRole() == 1){
					//管理员登录 管理员页面
					return "admin/index"; //登录成功
				}else{
					//普通用户登录  不同用户页面
					return "ordinary/xxx";
				}
			}
			else{
				model.addAttribute("msg","输入的用户名和密码错误！");
				return "../../index";
			}	
	}
}
