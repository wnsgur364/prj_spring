package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value = "/indexUsrView")
	public String home() {
		return "usr/infra/index/indexUsrView";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "usr/infra/index/index";
	}
	
	@RequestMapping(value = "/account")
	public String account() {
		return "usr/infra/index/account";
	}
	
	@RequestMapping(value = "/accountAdd")
	public String accountAdd() {
		return "usr/infra/index/accountAdd";
	}
	
	@RequestMapping(value = "/accountModification")
	public String accountModification() {
		return "usr/infra/index/accountModification";
	}
	
	@RequestMapping(value = "/autoSend")
	public String autoSend() {
		return "usr/infra/index/autoSend";
	}
	
	@RequestMapping(value = "/send")
	public String send() {
		return "usr/infra/index/send";
	}
	
	@RequestMapping(value = "/deposit")
	public String deposit() {
		return "usr/infra/index/deposit";
	}
	
	@RequestMapping(value = "/domesticStock")
	public String domesticStock() {
		return "usr/infra/index/domesticStock";
	}
	
	@RequestMapping(value = "/exchangeRate")
	public String exchangeRate() {
		return "usr/infra/index/exchangeRate";
	}
	
	@RequestMapping(value = "/foreignStock")
	public String foreignStock() {
		return "usr/infra/index/foreignStock";
	}
	
	@RequestMapping(value = "/indexXdmView")
	public String adminMain() {
		return "xdm/infra/index/indexXdmView";
	}
	
	@RequestMapping(value = "/adminAccount")
	public String adminAccount() {
		return "xdm/infra/index/adminAccount";
	}
	
	@RequestMapping(value = "/adminTransaction")
	public String adminTransaction() {
		return "xdm/infra/index/adminTransaction";
	}
	
	@RequestMapping(value = "/adminCustomer")
	public String adminCustomer() {
		return "xdm/infra/index/adminCustomer";
	}
	
	@RequestMapping(value = "/adminInfluencer")
	public String adminInfluencer() {
		return "xdm/infra/index/adminInfluencer";
	}
	
}