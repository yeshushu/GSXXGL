package com.supren.utils;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;
/**
 * 字符串工具
 * @author yujin
 *
 */
public class StringUtils {
	
	/**
	 * 判断字符串是否为空,true是空字符串，false不是空字符串
	 * @param str
	 * @return
	 */
	public static boolean isBlank(String str){
		if("".equals(str) || ""==str){
			return true;
		}
		return false;
	}
	
	/**
	 * 将字符串","连接转成Long集合
	 */
	public static List<Long> str2Long(String str){
		List<Long> m = new ArrayList<Long>();
		String[] strs = str.split(",");
		for(String s : strs){
			Long id = Long.parseLong(s);
			m.add(id);
		}
		return m;
	}
	/**
	 * 切割字符串
	 */
	public static String[] splitPath(String path) throws Exception {
		String[] values = path.split(",") ;
		return values ; 
	}
	
	/**
	 * 判断某个字符是否在字符数组中
	 */
	public static boolean strContainStrs(String[] ids,String id){
		for(String idstr : ids){
			if(id.equals(idstr)){
				return true;
			}
		}
		return false;
	}
	 
	/**
	 * 是否为空
	 * @param str
	 * @return
	 */
	public static boolean isEmpty(String str){
		if(str==null||"".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 
	 * @param str
	 * @return
	 */
	public static boolean isNotEmpty(String str){
		if((str!=null)&&!"".equals(str.trim())){
			return true;
		}else{
			return false;
		}
	}
	/**
	 * 转换为模糊查询的字段
	 * @param str
	 * @return
	 */
	public static String formatLike(String str){
		if(isNotEmpty(str)){
			return "%"+str+"%";
		}else{
			return null;
		}
	}
	
	 /**
	  * 转换编码
	 * @param str
	 * @return
	 */
	public static String enCodeStr(String str) {  
	        try {  
	          return new String(str.getBytes("iso-8859-1"), "UTF-8");  
	        } catch (UnsupportedEncodingException e) {  
	            e.printStackTrace();  
	            return null;  
	        }  
	    }  
}
