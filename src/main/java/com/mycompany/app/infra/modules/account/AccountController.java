package com.mycompany.app.infra.modules.account;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.member.MemberServiceImpl;
import com.mycompany.app.infra.modules.member.MemberVo;

@Controller
public class AccountController {
	
	@Autowired
	AccountServiceImpl service;
	@Autowired
	MemberServiceImpl groupService;
	
	@RequestMapping("/accountList")
	public String accountList(@ModelAttribute("vo") AccountVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<Account> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "xdm/infra/account/accountList";
	}
	
	@RequestMapping("/accountForm")
	public String accountForm(AccountVo vo, Model model, MemberVo groupvo, Model groupModel) {
		model.addAttribute("item", service.selectOne(vo));
		groupModel.addAttribute("group", groupService.selectList(groupvo));
		
		return "xdm/infra/account/accountForm";
	}
	
	@RequestMapping("/accountUpdate")
	public String accountUpdate(Account dto) {
		service.update(dto);
		return "redirect:/accountList";
	}
	
	@RequestMapping("/accountInsert")
	public String accountInsert(Account dto) {
		service.insert(dto);
		return "redirect:/accountList";
	}
	
	@RequestMapping("/accountUelete")
	public String accountUelete(Account dto) {
		service.uelete(dto);
		return "redirect:/accountList";
	}

}
