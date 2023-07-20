package com.mycompany.app.infra.modules.transaction;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.account.AccountServiceImpl;
import com.mycompany.app.infra.modules.account.AccountVo;

@Controller
public class TransactionController {
	
	@Autowired
	TransactionServiceImpl service;
	@Autowired
	AccountServiceImpl groupService;
	
	@RequestMapping(value = "/transactionList")
	public String transactionList(@ModelAttribute("vo") TransactionVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "xdm/infra/transaction/transactionList";
	}
	
	@RequestMapping(value = "/transactionForm")
	public String transactionForm(TransactionVo vo, Model model, AccountVo groupvo, Model groupModel) {
		model.addAttribute("item", service.selectOne(vo));
		groupModel.addAttribute("group", groupService.selectList(groupvo));
		return "xdm/infra/transaction/transactionForm";
	}
	
	@RequestMapping("/transactionUpdate")
	public String transactionUpdate(Transaction dto) {
		service.update(dto);
		return "redirect:/transactionList";
	}
	
	@RequestMapping("/transactionInsert")
	public String transactionInsert(Transaction dto) {
		service.insert(dto);
		return "redirect:/transactionList";
	}
	
	@RequestMapping("/transactionUelete")
	public String transactionUelete(Transaction dto) {
		service.uelete(dto);
		return "redirect:/transactionList";
	}
	
	@RequestMapping(value = "/accountUsrView")
	public String accountUsrView(@ModelAttribute("vo") TransactionVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", service.selectList(vo));
		} else {
//			by pass
		}
		return "usr/infra/index/accountUsrView";
	}
	
}
