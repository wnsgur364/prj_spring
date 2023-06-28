package com.mycompany.app.infra.index;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {

	@RequestMapping(value = "/")
	public String home() {
		return "home/home";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "usr/infra/index/index";
	}
	
	@RequestMapping(value = "/account")
	public String account() {
		return "usr/infra/subpage/account";
	}
	
	@RequestMapping(value = "/accountAdd")
	public String accountAdd() {
		return "usr/infra/subpage/accountAdd";
	}
	
	@RequestMapping(value = "/accountModification")
	public String accountModification() {
		return "usr/infra/subpage/accountModification";
	}
	
	@RequestMapping(value = "/autoSend")
	public String autoSend() {
		return "usr/infra/subpage/autoSend";
	}
	
	@RequestMapping(value = "/send")
	public String send() {
		return "usr/infra/subpage/send";
	}
	
	@RequestMapping(value = "/deposit")
	public String deposit() {
		return "usr/infra/subpage/deposit";
	}
	
	@RequestMapping(value = "/domesticStock")
	public String domesticStock() {
		return "usr/infra/subpage/domesticStock";
	}
	
	@RequestMapping(value = "/exchangeRate")
	public String exchangeRate() {
		return "usr/infra/subpage/exchangeRate";
	}
	
	@RequestMapping(value = "/foreignStock")
	public String foreignStock() {
		return "usr/infra/subpage/foreignStock";
	}
	
	@RequestMapping(value = "/adminMain")
	public String adminMain() {
		return "xdm/index/adminMain";
	}
	
	@RequestMapping(value = "/adminAccount")
	public String adminAccount() {
		return "xdm/subpage/adminAccount";
	}
	
	@RequestMapping(value = "/adminTransaction")
	public String adminTransaction() {
		return "xdm/subpage/adminTransaction";
	}
	
	@RequestMapping(value = "/adminCustomer")
	public String adminCustomer() {
		return "xdm/subpage/adminCustomer";
	}
	
	@RequestMapping(value = "/adminInfluencer")
	public String adminInfluencer() {
		return "xdm/subpage/adminInfluencer";
	}
	
}