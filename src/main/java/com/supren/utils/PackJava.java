package com.supren.utils;

//用来打包各种文件，就是传入文件路径 然后copy
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;
import java.util.StringTokenizer;

import org.apache.commons.io.FileUtils;

public class PackJava {
	public static Properties setting;
	// 获取配置的文件信息
	public Properties getProper(String ss) throws IOException {

		InputStream localInputStream = new FileInputStream(ss);
		setting = new Properties();
		setting.load(localInputStream);

		return setting;
	}
	/**
	 * AlipayConfig.java = src/main/java/com/alipay/config/AlipayConfig.java
	 * myPath.properties = src/main/resources/myPath.properties
	 * applyShopList.jsp = src/main/webapp/WEB-INF/jsps/admin/shop/applyShopList.jsp
	 * D:\Workspaces\xtxq\target\classes\main\webapp\WEB-INF\jsps\admin\shop\applyShopList.jsp --D:\Workspaces\xtxq\src\main\webapp\WEB-INF\jsps\admin\shop\applyShopList.jsp
	 * D:\Workspaces\xtxq\target\classes\main\java\com\alipay\config\AlipayConfig.class -- D:\Workspaces\xtxq\target\classes\com\alipay\config\AlipayConfig.class
	 * @param args
	 */
	public static void main(String[] args) {

		String classPath = PackJava.class.getClass().getResource("/").getPath();
		
		String sall = classPath.substring(0, classPath.lastIndexOf("target"));
		String s1 = sall + "src/main/resources/myPath.properties";

		PackJava packJava = new PackJava();
		Properties profile = null;
		try {
			profile = packJava.getProper(s1);
		} catch (IOException e1) {
			e1.printStackTrace();
		}
		System.out.println("***************开始导出***************");
		String classRootPath = "";
		for (Object key : profile.keySet()) {
			String keys = key.toString();
			String value = profile.getProperty(keys);
			String path = "";
			//java、配置文件需要到 target\classes 取
			if(value.contains("src/main/java") || value.contains("src/main/resources")){
				path = classPath;
				
		        value = getSubStr(value);
		        
				if (value.contains(".java")) {
					value = value.replace(".java", ".class");
				}
				
				classRootPath = "WEB-INF/classes/";
				
			}else{
				path = sall;
			}
			String filefrom = path + value;
			
			if(value.contains("src/main/webapp")){
				value = getSubStr(value);
			}else{
				value = classRootPath + value;
			}
			
			String fileto = "C:/Users/Administrator/Desktop/uploadfile/jgdz/" + value;
			/*System.out.println("=====");
			System.out.println("成功导出文件:[" + filefrom + "]***************");
			System.out.println("成功导出文件:[" + fileto + "]***************");
			System.out.println("=====");*/
			
			File from = new File(filefrom);
			File to = new File(fileto);
			try {
				FileUtils.copyFile(from, to);
				System.out.println("成功导出文件:[" + filefrom + "]***************");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		System.out.println("***************结束导出***************");

	}
	
	public static String getSubStr(String value){
		StringTokenizer token=new StringTokenizer(value,"/",true);
		
		int i = 0;
        String s = "";
        while (token.hasMoreTokens()) {
        	i ++;
			String str = token.nextToken();
			if(i>6){
				s += str;
			}
		}
        return s;
	}

}
