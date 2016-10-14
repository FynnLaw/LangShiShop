package com.shop;

import java.util.HashMap;
import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.redis.counter.RedisTool;
import com.util.Code;

import net.sf.json.JSONObject;

@Controller
public class TransportController {
	private static Logger logger = Logger.getLogger(TransportController.class);
	private final String ADVISE_KEY = "Advise_Key";
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/transport")
	public String transport(@RequestParam("getReplyKey") String getReplyKey,@RequestParam("content") String content){
		Map<String, String> result =  new HashMap<String, String>();
		
		boolean keyExsited = RedisTool.getInstance().exsitKey(getReplyKey);
		//如果已经存在key，则提示用户重新输入
		if(keyExsited){
			result.put("code", Code.ERROR);
			result.put("message", "getReplyKey already exist");
		}else{
			String key1 = getReplyKey.substring(0, 8);
			String key2 = getReplyKey.substring(8, 16);
			String key3 = getReplyKey.substring(16, 32);
			
			Des desObj = new Des();
			String desContent = desObj.strDec(content, key1, key2, key3);
			
			RedisTool.getInstance().setKeyValue(getReplyKey, desContent);
			
			result.put("code", "0");
			result.put("message", Code.SUCESS);
		}
		
		//声明JSONArray对象并输入JSON字符串
		JSONObject json = JSONObject.fromObject(result);
		
		System.out.println(json.toString());
		logger.info(json.toString());
		
		return json.toString();
	}
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/getReply")
	public String getReply(@RequestParam("getReplyKey") String getReplyKey){
		Map<String, String> result =  new HashMap<String, String>();
		
		boolean keyExsited = RedisTool.getInstance().exsitKey(getReplyKey);
		if(!keyExsited){
			result.put("code", Code.ERROR);
			result.put("message", "noReplyKey");
		}else{
			String reply = RedisTool.getInstance().getValue(getReplyKey);
			
			if(reply == null){
				result.put("code", Code.ERROR);
				result.put("reply", "noReply");
			}else{
				result.put("code", Code.SUCESS);
				result.put("reply", reply);
			}
		}
		
		JSONObject json = JSONObject.fromObject(result);
		System.out.println(json.toString());
		return json.toString();
	}
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/advise")
	public String advise(@RequestParam("content") String content){
		Long res = RedisTool.getInstance().addList(ADVISE_KEY, content);
		
		Map<String, String> result =  new HashMap<String, String>();
		result.put("reply", res + "");
		JSONObject json = JSONObject.fromObject(result);
		System.out.println(json.toString());
		return json.toString();
	}
}
