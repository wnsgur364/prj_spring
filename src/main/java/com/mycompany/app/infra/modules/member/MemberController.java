package com.mycompany.app.infra.modules.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping("/loginProc")
	public Map<String, Object> loginProc(MemberVo vo, HttpSession session) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.loginProc(vo);
		
		if(rtMember != null) {
	        // 로그인 성공 시 세션에 사용자 정보 저장
	        session.setAttribute("id", rtMember.getId());
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	@RequestMapping("/logout")
	public String logout(HttpSession session) {
	    // 세션에서 사용자 정보를 제거하여 로그아웃 처리
	    session.removeAttribute("id");
	    
	    return "redirect:indexUsrView"; // 로그아웃 후에 메인 페이지로 리다이렉트
	}
}
