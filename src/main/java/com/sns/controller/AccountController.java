package com.sns.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sns.service.AccountService;
import com.sns.vo.InsertAccountParamVo;

@Controller
@RequestMapping("/login")
public class AccountController {
	@Autowired
	AccountService accountService;

	@RequestMapping("/addAccount")
	public Map<String, Integer> main(@ModelAttribute InsertAccountParamVo param) {
		Map<String, Integer> result = accountService.InsertAccount(param);

		return result;
	}
}
