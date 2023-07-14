package com.mycompany.app.infra.modules.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value = "/")
	public String home() {
		return "usr/infra/biography/biography";
	}
	
	@RequestMapping(value = "/indexUsrView")
	public String indexUsrView() {
		return "usr/infra/index/indexUsrView";
	}
	
	@RequestMapping(value = "/accountUsrView")
	public String accountUsrView() {
		return "usr/infra/index/accountUsrView";
	}
	
	@RequestMapping(value = "/accountAddUsrView")
	public String accountAddUsrView() {
		return "usr/infra/index/accountAddUsrView";
	}
	
	@RequestMapping(value = "/accountModificationUsrView")
	public String accountModificationUsrView() {
		return "usr/infra/index/accountModificationUsrView";
	}
	
	@RequestMapping(value = "/autoSendUsrView")
	public String autoSendUsrView() {
		return "usr/infra/index/autoSendUsrView";
	}
	
	@RequestMapping(value = "/sendUsrView")
	public String sendUsrView() {
		return "usr/infra/index/sendUsrView";
	}
	
	@RequestMapping(value = "/depositUsrView")
	public String depositUsrView() {
		return "usr/infra/index/depositUsrView";
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
}
