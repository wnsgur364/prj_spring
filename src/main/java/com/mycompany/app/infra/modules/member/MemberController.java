package com.mycompany.app.infra.modules.member;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@Autowired
	MemberServiceImpl service;
	
	@RequestMapping(value = "/memberList")
	public String memberList(@ModelAttribute("vo") MemberVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "xdm/infra/member/memberList";
	}
	
	@RequestMapping(value = "/memberForm")
	public String memberForm(MemberVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "xdm/infra/member/memberForm";
	}
	
	@RequestMapping("/memberUpdate")
	public String memberUpdate(Member dto) {
		service.update(dto);
		return "redirect:/memberList";
	}
	
	@RequestMapping("/memberUelete")
	public String memberUelete(Member dto) {
		service.uelete(dto);
		return "redirect:/memberList";
	}
	
	@RequestMapping(value = "/loginUsrForm")
	public String loginUsrForm() {
		return "usr/infra/member/loginUsrForm";
	}

	@RequestMapping(value = "/registerUsrForm")
	public String registerUsrForm() {
		return "usr/infra/member/registerUsrForm";
	}
	
	@RequestMapping(value = "/registerInsert")
	public String registerInsert(Member dto) {
		service.insert(dto);
		return "redirect:/loginUsrForm";
	}
	
	@RequestMapping(value = "/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/member/loginXdmForm";
	}
	
}
