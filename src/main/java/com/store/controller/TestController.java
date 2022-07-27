package com.store.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/store")
public class TestController {
	@RequestMapping("")
	public String test() {
		return "/store/test";	}
}
