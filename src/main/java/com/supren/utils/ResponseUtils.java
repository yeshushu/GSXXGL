package com.supren.utils;
import java.io.PrintWriter;
import javax.servlet.http.HttpServletResponse;
/**
 * reponse工具类
 * @author 余进
 */
public class ResponseUtils {
	
	public static void write(HttpServletResponse response,Object o)throws Exception{
		response.setContentType("text/html;charset=utf-8");
		PrintWriter out=response.getWriter();
		out.println(o.toString());
		out.flush();
		out.close();
	}
}
