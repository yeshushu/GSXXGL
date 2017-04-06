package com.supren.utils;

import org.json.JSONObject;

/**
 * 消息工具
 * @author 余进
 */
public class MessageUtils {
	
	/**
	 * 	{"respResult":{"datas":null,"result":1001}}
	 */
	public static JSONObject genJsonMesg(Integer statuscode){
		JSONObject json = new JSONObject();
		json.put("statusCode", statuscode);
		json.put("message", "登陆超时");
		return json;
	}
}
