package com.mycompany.app.infra.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {
	
	@RequestMapping(value = "/xdmLoginForm")
	public String xdmLoginForm() {
		return "xdm/member/xdmLoginForm";
	}
	
	@RequestMapping(value = "/xdmRegisterForm")
	public String xdmRegisterForm() {
		return "xdm/member/xdmRegisterForm";
	}
	
	@RequestMapping(value = "/usrLoginForm")
	public String usrLoginForm() {
		return "usr/member/usrLoginForm";
	}
	
	@RequestMapping(value = "/usrRegisterForm")
	public String usrRegisterForm() {
		return "usr/member/usrRegisterForm";
	}
	
}
