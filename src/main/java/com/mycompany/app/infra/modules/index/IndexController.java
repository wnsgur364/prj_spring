package com.mycompany.app.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.account.Account;
import com.mycompany.app.infra.modules.account.AccountServiceImpl;
import com.mycompany.app.infra.modules.account.AccountVo;
import com.mycompany.app.infra.modules.influencer.Influencer;
import com.mycompany.app.infra.modules.influencer.InfluencerServiceImpl;
import com.mycompany.app.infra.modules.influencer.InfluencerVo;
import com.mycompany.app.infra.modules.member.MemberServiceImpl;
import com.mycompany.app.infra.modules.member.MemberVo;
import com.mycompany.app.infra.modules.transaction.Transaction;
import com.mycompany.app.infra.modules.transaction.TransactionServiceImpl;
import com.mycompany.app.infra.modules.transaction.TransactionVo;

@Controller
public class IndexController {
	

	@Autowired
	AccountServiceImpl acService;
	@Autowired
	InfluencerServiceImpl inService;
	@Autowired
	TransactionServiceImpl trService;
	@Autowired
	MemberServiceImpl mbService;
	
	@RequestMapping(value = "/")
	public String home() {
		return "biography/biography";
	}
	
	@RequestMapping(value = "/indexUsrView")
	public String indexUsrView(@ModelAttribute("vo") InfluencerVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(inService.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<Influencer> list = inService.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "usr/infra/index/indexUsrView";
	}
	
	@RequestMapping(value = "/accountUsrView")
	public String accountUsrView(@ModelAttribute("vo") TransactionVo vo, Model model , AccountVo groupvo, Model groupModel) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(trService.selectOneCount(vo));
		groupModel.addAttribute("group", acService.selectList(groupvo));
		
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", trService.selectList(vo));
		} else {
//			by pass
		}
		return "usr/infra/index/accountUsrView";
	}
	
	@RequestMapping("/withdrawUsrView")
	public String withdrawUsrView(TransactionVo vo, Model model, AccountVo groupvo, Model groupModel) {
		model.addAttribute("item", trService.selectOne(vo));
		groupModel.addAttribute("group", acService.selectList(groupvo));
		
		return "usr/infra/index/withdrawUsrView";
	}
	
	@RequestMapping("/withdrawInsert")
	public String withdrawInsert(Transaction dto) {
		trService.withdraw(dto);
		return "redirect:/accountUsrView";
	}
	
	@RequestMapping(value = "/accountAddUsrView")
	public String accountAddUsrView(MemberVo vo, Model model) {
		model.addAttribute("member", mbService.selectList(vo));
		return "usr/infra/index/accountAddUsrView";
	}
	
	@RequestMapping("/accountAdd")
	public String accountAdd(Account dto) {
		acService.accountAdd(dto);
		return "redirect:/accountUsrView";
	}
	
	@RequestMapping(value = "/domesticStockUsrView")
	public String domesticStockUsrView() {
		return "usr/infra/index/domesticStockUsrView";
	}
	
	@RequestMapping(value = "/exchangeRateUsrView")
	public String exchangeRateUsrView() {
		return "usr/infra/index/exchangeRateUsrView";
	}
	
	@RequestMapping(value = "/foreignStockUsrView")
	public String foreignStockUsrView() {
		return "usr/infra/index/foreignStockUsrView";
	}
	
	@RequestMapping(value = "/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}
	
	@RequestMapping(value = "/depositUsrView")
	public String depositUsrView() {
		return "usr/infra/index/depositUsrView";
	}
	
	@RequestMapping(value = "/sendUsrView")
	public String sendUsrView() {
		return "usr/infra/index/sendUsrView";
	}

}
