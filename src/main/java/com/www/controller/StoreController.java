package com.www.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.www.service.StoreService;

@Controller
public class StoreController {
	@Autowired
	StoreService storeService;
	
	@RequestMapping("/")
	public String main() {
		System.out.println("test");
		
		System.out.println("Dao Test" + storeService.GetTest());
		return "test";
	}
	
}
