package com.mycompany.app.infra.modules.index;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.influencer.Influencer;
import com.mycompany.app.infra.modules.influencer.InfluencerServiceImpl;
import com.mycompany.app.infra.modules.influencer.InfluencerVo;
import com.mycompany.app.infra.modules.transaction.TransactionServiceImpl;
import com.mycompany.app.infra.modules.transaction.TransactionVo;

@Controller
public class IndexController {
	

	@RequestMapping(value = "/")
	public String home() {
		return "biography/biography";
	}
	
	@Autowired
	InfluencerServiceImpl inservice;
	@RequestMapping(value = "/indexUsrView")
	public String indexUsrView(@ModelAttribute("vo") InfluencerVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(inservice.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<Influencer> list = inservice.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "usr/infra/index/indexUsrView";
	}
	
	@Autowired
	TransactionServiceImpl trservice;
	@RequestMapping(value = "/accountUsrView")
	public String accountUsrView(@ModelAttribute("vo") TransactionVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(trservice.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			model.addAttribute("list", trservice.selectList(vo));
		} else {
//			by pass
		}
		return "usr/infra/index/accountUsrView";
	}
	
	@RequestMapping(value = "/accountAddUsrView")
	public String accountAddUsrView() {
		return "usr/infra/index/accountAddUsrView";
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
	
	@RequestMapping(value = "/withdrawUsrView")
	public String withdrawUsrView() {
		return "usr/infra/index/withdrawUsrView";
	}
}
