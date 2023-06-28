package com.mycompany.app.infra.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/loginXdmForm")
	public String loginXdmForm() {
		return "xdm/infra/member/loginXdmForm";
	}
	
	@RequestMapping(value = "/registerXdmForm")
	public String registerXdmForm() {
		return "xdm/infra/member/registerXdmForm";
	}
	
	@RequestMapping(value = "/loginUsrForm")
	public String loginUsrForm() {
		return "usr/infra/member/loginUsrForm";
	}
	
	@RequestMapping(value = "/registerUsrForm")
	public String registerUsrForm() {
		return "usr/infra/member/registerUsrForm";
	}
	
}
