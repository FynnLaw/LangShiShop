package com.shop;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.redis.counter.RedisTool;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;
import net.sf.json.util.JSONUtils;

@Controller
public class TransportController {
	private final String ADVISE_KEY = "Advise_Key";
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/transport")
	public String transport(@RequestParam("getReplyKey") String getReplyKey,@RequestParam("content") String content){
		
		RedisTool.getInstance().setKeyValue(getReplyKey, content);
		
		Map<String, String> result =  new HashMap<String, String>();
		result.put("result", "success!");
		
		//声明JSONArray对象并输入JSON字符串
		JSONObject json = JSONObject.fromObject(result);
		System.out.println(json.toString());
		return json.toString();
	}
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/getReply")
	public String getReply(@RequestParam("getReplyKey") String getReplyKey){
		String reply = RedisTool.getInstance().getValue(getReplyKey);
		
		Map<String, String> result =  new HashMap<String, String>();
		result.put("reply", reply);
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
