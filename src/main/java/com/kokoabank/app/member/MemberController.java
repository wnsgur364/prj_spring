package com.kokoabank.app.member;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class MemberController {

	@RequestMapping(value = "/loginForm")
	public String loginForm() {
		// 여기에서 서버단에 필요한 작업을 수행한다.
		
		
		// 아래의 jsp 파일 호출
		return "xdm/member/loginForm";
	}
	
}
