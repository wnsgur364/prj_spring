package com.mycompany.app.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeList")
	public String codeList(Model model) {
		
		model.addAttribute("list", service.selectList());
		
		return "codeList";
	}
}
