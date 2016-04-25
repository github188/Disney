package com.disney.web.controller;

import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.disney.handler.jieshun.JieShunService;
import com.disney.util.Ajax;

@Controller
public class JieShunApiController {
	
	@Autowired
	private JieShunService jieShunService;
	
	@RequestMapping("/jstest")
	@ResponseBody
	public Map<String,Object> jstest() throws Exception {

		// 客户号
		String cid = "880002101002155";
		// 帐号
		String user = "880002101002155";	
		// 密码
		String password = "123456";
		
		String version = "2";
		
		String token = jieShunService.getLoginToken(cid, user, password,version);
		
		return Ajax.getSuccessReturnMapWithData(token);
	}
	
}
