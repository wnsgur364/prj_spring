package com.kokoabank.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping(value = "/loginForm")
	public String loginForm() {
		return "xdm/member/loginForm";
	}
	
}
