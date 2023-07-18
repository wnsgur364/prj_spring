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

/**
 * @author leejh
 *
 */
/**
 * @author leejh
 *
 */
/**
 * @author leejh
 *
 */
/**
 * @author leejh
 *
 */
/**
 * @author leejh
 *
 */
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
	
	/**
	 * @param vo
	 * @param httpSession
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/loginProc")
	public Map<String, Object> loginProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.loginProc(vo);
		
		if(rtMember != null) {
	        // 로그인 성공 시 세션에 사용자 정보 저장
			httpSession.setMaxInactiveInterval(60*60); //60min
			httpSession.setAttribute("id", vo.getId());
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	/**
	 * @param httpSession
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/logoutProc")
	public Map<String, Object> logoutProc(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println(httpSession.getAttribute("id"));
		httpSession.invalidate();
	    returnMap.put("rt", "success");
	    return returnMap; 
	}
	
	/**
	 * @param vo
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/checkIdProc")
	public Map<String, Object> checkIdProc(MemberVo vo) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		int rtNum = service.selectOneIdCheck(vo);
		
		if(rtNum == 0) {
			returnMap.put("rt", "available");
		} else {
			returnMap.put("rt", "unavailable");
		}
		return returnMap;
	}
	
	/**
	 * @param vo
	 * @param httpSession
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/loginXdmProc")
	public Map<String, Object> loginXdmProc(MemberVo vo, HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		
		Member rtMember = service.loginXdmProc(vo);
		
		if(rtMember != null) {
	        // 로그인 성공 시 세션에 사용자 정보 저장
			httpSession.setMaxInactiveInterval(60*60); //60min
			httpSession.setAttribute("id", vo.getId());
	        
			returnMap.put("rtMember", rtMember);
			returnMap.put("rt", "success");
		} else {
			returnMap.put("rt", "fail");
		}
		return returnMap;
	}
	
	/**
	 * @param httpSession
	 * @return
	 */
	@ResponseBody
	@RequestMapping("/logoutXdmProc")
	public Map<String, Object> logoutXdmProc(HttpSession httpSession) {
		Map<String, Object> returnMap = new HashMap<String, Object>();
		System.out.println(httpSession.getAttribute("id"));
		httpSession.invalidate();
	    returnMap.put("rt", "success");
	    return returnMap; 
	}	
}
