package com.supren.web.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.supren.domain.user.UserInfo;
import com.supren.utils.MessageUtils;
import com.supren.utils.ResponseUtils;
/**
 * 登录超时拦截器处理
 * @author fyjiang
 *
 */
public class LoginInterceptor implements HandlerInterceptor{
	
	private static Logger logger = Logger.getLogger(LoginInterceptor.class);
	
	/**
	 * 请求前执行
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
		String uri = request.getRequestURI();
		logger.info("*****************Interceptor Begin*****************");
		logger.info("uri:"+uri);
		
		HttpSession session = request.getSession();
		UserInfo userInfo = (UserInfo) session.getAttribute("User");
		if(userInfo != null){
			return true;
		}else{
			ResponseUtils.write(response,MessageUtils.genJsonMesg(301));
			logger.info("*****************登录超时*****************");
			logger.info("*****************session out*****************");
		}
		
		
		logger.info("*****************Interceptor End*****************");
		return false;
	}

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {
		
	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
		
	}

}
