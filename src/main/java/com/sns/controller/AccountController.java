package com.sns.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.sns.service.AccountService;
import com.sns.vo.InsertAccountParamVo;
import com.sns.vo.LoginParamVo;

@Controller
@RequestMapping("/login")
public class AccountController {
	@Autowired
	AccountService accountService;

	@ResponseBody
	@RequestMapping("/addAccount")
	public int InsertAccount(@ModelAttribute InsertAccountParamVo param) {

		return accountService.InsertAccount(param);
	}
	
	@RequestMapping("")
	public String Login(@ModelAttribute LoginParamVo param) {
		
	}
}
