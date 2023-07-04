package com.mycompany.app.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<CodeGroup> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "xdm/infra/codeGroup/codeGroupList";
	}
	
//	@RequestMapping("/codeGroupList")
//	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
//		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
//		model.addAttribute("list", service.selectList(vo));
//		return "xdm/infra/codeGroup/codeGroupList";
//	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "xdm/infra/codeGroup/codeGroupForm";
	}
	
	@RequestMapping("/codeGroupUpdate")
	public String codeGroupUpdate(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
//	@RequestMapping("/codeGroupDelete")
//	public String codeGroupDelete(CodeGroup dto) {
//		service.delete(dto);
//		return "redirect:/codeGroupList";
//	}
	
	@RequestMapping("/codeGroupInsert")
	public String codeGroupInsert(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupList";
	}
	
}
