package com.supren.base;

/**
 * 系统常量
 * @author Administrator
 */
public class SystemConstants {
	
	/**
	 * @author Administrator
	 */
	public final static String DATE_TIME = "yyyy-MM-dd HH:mm:ss";
	public final static String TIME = "HH:mm:ss";
	public final static String DATE = "yyyy-MM-dd";
	
	public static class AdImgConstant {
		/**
		 * 图片上传路径
		 */
		public static String relativePath = "resources/upload/ad/{yyy}{mm}{dd}/";
		
		/**
		 * 巡查信息图片
		 */
		public static String baseDir ="resources/upload/inspectInfo/";
		
		

		/**
		 * 图片状态 0、正常 ，1、禁用
		 */
		public static Integer IMG_ACTIVE_STATUS = 0;

		public static Integer IMG_LOCKED_STATUS = 1;
	}
	
}
