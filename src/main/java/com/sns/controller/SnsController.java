package com.sns.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sns.service.SnsService;

@Controller
@RequestMapping("/sns")
public class SnsController {
	@Autowired
	SnsService snsService;
	
	@RequestMapping("")
	public String main() {
		System.out.println("test");
		
		//System.out.println("Dao Test" + snsService.GetTest());
		return "/sns/test";
	}
	
}
