package com.supren.utils;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
public class DateUtils {
	
	/**
	 * @param date
	 * @param format yyyy：年 ，MM：月，dd：日，hh：时，mm：分，ss：秒
	 * examle：
	 * 		① DateUtils.genDateFromat(new Date(),"yyyy-MM-dd hh:mm:ss");
	 * 		② DateUtils.genDateFromat(new Date(),"yyyy年MM月dd日 hh时mm分ss秒");
	 * 		③ DateUtils.genDateFromat(new Date(),"yyyy-MM-dd");
	 * 		④ DateUtils.genDateFromat(new Date(),"yyyy年MM月dd日");etc
	 * @return
	 */
	public static String genDateFromat(Date date,String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		return sdf.format(date);
	}
	
	/**
	 * 字符串转化为时间
	 * @param str
	 * @param format
	 * @return
	 */
	public static Date str2Date(String strdate,String format){
		SimpleDateFormat sdf = new SimpleDateFormat(format);
		Date date = null;
		try {
		    date = sdf.parse(strdate);
		} catch (ParseException e) {
		    e.printStackTrace();
		}
		return date;
	}
	
	/**
	 * 格式化时间
	 */
	public static Date date2FormatDate(Date date,String format){
		String str_datr = genDateFromat(date,format);
		return str2Date(str_datr,format);
	}
	
}