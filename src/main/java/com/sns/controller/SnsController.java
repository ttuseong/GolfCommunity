package com.sns.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.sns.service.SnsService;
import com.sns.vo.SnsVo;

@Controller
@RequestMapping("/sns")
public class SnsController {
	@Autowired
	SnsService snsService;
	
	@RequestMapping("")
	public String main(Model model) {	
		List<SnsVo> snsvo = snsService.GetPost(1);
		
		for(int i = 0; i < snsvo.size(); i++) {
			System.out.println(i + " : " + snsvo.get(i).getContent());
		}
		
		model.addAttribute("snsList", snsvo);
		
		return "/sns/snsIndex";
	}
	
}
