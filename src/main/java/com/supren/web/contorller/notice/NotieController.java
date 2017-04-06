package com.supren.web.contorller.notice;

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

import com.supren.domain.notice.NoticeInfo;
import com.supren.domain.user.UserInfo;
import com.supren.service.notice.NoticeService;

@Controller
@RequestMapping(value="/notieController")
public class NotieController {

	@Autowired
	private NoticeService noticeService;
	
	@ModelAttribute
	@RequestMapping(value="get")
	public NoticeInfo get(NoticeInfo noticeInfo){
		
		NoticeInfo noticeInfo2 = null;
		if(noticeInfo.getId()!= null){
			noticeInfo2 = noticeService.get(noticeInfo.getId());
		}
		
		return noticeInfo2;
	}
	
	@RequestMapping(value="findAll",method=RequestMethod.GET)
	public String findAll(Model model){
		List<NoticeInfo> list = new ArrayList<NoticeInfo>();
		
		list = noticeService.findAllList();
		if(list.size() > 0 && !list.isEmpty()){
			model.addAttribute("NotieInfo",list);
		}
		return "admin/teacher_manage";
	}
	
	
	@RequestMapping(value="save",method=RequestMethod.POST)
	public String save(UserInfo userInfo,Model model,HttpSession session,HttpServletRequest request){
		
		
		
		return null;
	}
}
