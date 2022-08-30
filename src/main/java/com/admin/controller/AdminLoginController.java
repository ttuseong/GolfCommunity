package com.admin.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
//추가로 매핑할 수 있는 내용이 있음
@RequestMapping("/admin")
public class AdminLoginController {

	@RequestMapping("")
	public String Login() {
		System.out.println("adm");
		return "/admin/test";
	}
}
