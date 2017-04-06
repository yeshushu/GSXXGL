package com.supren.web.contorller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.acegisecurity.providers.encoding.ShaPasswordEncoder;
import org.json.JSONObject;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.supren.domain.User;
import com.supren.service.UserService;
import com.supren.utils.StringUtils;

@Controller
public class UserController {

	@Autowired
	private UserService userService;
	
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
	public String login(String username,String password,String captcha,Model model,HttpSession session,HttpServletRequest request) throws Exception{
		
		username = request.getParameter("username");
		password = request.getParameter("password");
		
		System.out.println("UserController.login()......");
		/*String captchaInSession = (String)session.getAttribute("captcha");
		if(StringUtils.isBlank(captcha)){
			model.addAttribute("msg","请输入验证码");
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "login";
		}else{
			if(!captcha.equalsIgnoreCase(captchaInSession)){
				logger.info(captchaInSession);
				model.addAttribute("msg","请输入正确的验证码！");
				model.addAttribute("username", username);
				model.addAttribute("password", password);
				return "login";
			}
		}*/
		
		if(StringUtils.isBlank(password) || StringUtils.isBlank(username)){
			model.addAttribute("msg","用户名或密码为空！");
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "index";
		}
		
		//获取用户信息通过用户名

		User user = userService.selectByname(username);
		
		if(null != user){
			//if(new ShaPasswordEncoder().encodePassword(password, null).equals(user.getLoginpass())){
			if(password.equals(user.getLoginpass())){
				session.setAttribute("user",user);
				
				return "test/test"; //登录成功
			}else{
				model.addAttribute("msg","输入的用户名和密码错误！");
				model.addAttribute("username", username);
				model.addAttribute("password", password);
				return "index";
			}
		}else{
			model.addAttribute("msg","输入的用户名和密码错误！");
			model.addAttribute("username", username);
			model.addAttribute("password", password);
			return "index";
		}
	}
	
	@RequestMapping("login_dialog")
	public String login(){
		
		return "/login_dialog";
	}
	
	/**
	 * 登录方法
	 * @param username
	 * @param password
	 * @return
	 * @throws Exception
	 */
	@RequestMapping(value="login_dialog",method=RequestMethod.POST)
	@ResponseBody
	public String login(String username,String password,HttpSession session) throws Exception{
		
		JSONObject json = new JSONObject();
		
		if(StringUtils.isBlank(password) || StringUtils.isBlank(username)){
			json.put("statusCode", "300");
			json.put("message", "请输入用户名/密码");
		}
		User user = userService.selectByname(username);
		
		if(null != user){
			if(new ShaPasswordEncoder().encodePassword(password, null).equals(user.getLoginpass())){
				session.setAttribute("userAccount",user);
				json.put("statusCode", "200");
				json.put("message", "操作成功");
				json.put("navTabId", "");
				json.put("forwardUrl", "");
				json.put("callbackType", "closeCurrent");
				json.put("rel", "");
			}else{
				json.put("statusCode", "300");
				json.put("message", "输入的用户名或密码错误！");
			}
		}else{
			json.put("statusCode", "300");
			json.put("message", "输入的用户名或密码错误！");
		}
		
		return json.toString();
	}
}
