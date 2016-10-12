package com.shop;

import java.util.HashMap;
import java.util.Map;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.redis.counter.RedisTool;

import net.sf.json.JSONArray;

@Controller
public class TransportController {
	
	@ResponseBody/** 该注解可以使这个方法直接向前端返回结果**/
	@RequestMapping("/transport")
	public String transport(@RequestParam("getReplyKey") String getReplyKey,@RequestParam("content") String content){
		
		RedisTool.getInstance().setKeyValue(getReplyKey, content);
		
		Map<String, String> params =  new HashMap<String, String>();
		params.put("result", "success!");
		
		//声明JSONArray对象并输入JSON字符串
		JSONArray array = JSONArray.fromObject(params);
		System.out.println(array.toString());
		return array.toString();
	}
}
