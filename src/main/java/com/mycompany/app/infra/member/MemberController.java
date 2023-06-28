package com.mycompany.app.infra.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/loginXdmForm")
	public String xdmLoginForm() {
		return "xdm/infra/member/loginXdmForm";
	}
	
	@RequestMapping(value = "/xdmRegisterForm")
	public String xdmRegisterForm() {
		return "xdm/infra/member/xdmRegisterForm";
	}
	
	@RequestMapping(value = "/usrLoginForm")
	public String usrLoginForm() {
		return "usr/infra/member/usrLoginForm";
	}
	
	@RequestMapping(value = "/usrRegisterForm")
	public String usrRegisterForm() {
		return "usr/infra/member/usrRegisterForm";
	}
	
}
