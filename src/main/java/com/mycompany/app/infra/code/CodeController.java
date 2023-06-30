package com.mycompany.app.infra.code;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	
	@RequestMapping("/codeList")
	public String codeList(CodeVo vo, Model model) {
		model.addAttribute("list", service.selectList(vo));
		return "xdm/infra/code/codeList";
	}
	
	@RequestMapping("/codeForm")
	public String codeForm(CodeVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "xdm/infra/code/codeForm";
	}
	
	@RequestMapping("/codeUpdate")
	public String codeUpdate(Code dto) {
		service.update(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("/codeDelete")
	public String codeDelete(Code dto) {
		service.delete(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("/codeInsert")
	public String codeInsert(Code dto) {
		service.insert(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("/codeUelete")
	public String codeUelete(Code dto) {
		service.uelete(dto);
		return "redirect:/codeList";
	}
	
}
