package com.mycompany.app.home;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {

	@RequestMapping(value = "/")
	public String home() {
		return "home/home";
	}
	
	@RequestMapping(value = "/index")
	public String index() {
		return "usr/index/index";
	}
	
	@RequestMapping(value = "/account")
	public String account() {
		return "usr/subpage/account";
	}
	
	@RequestMapping(value = "/accountAdd")
	public String accountAdd() {
		return "usr/subpage/accountAdd";
	}
	
	@RequestMapping(value = "/accountModification")
	public String accountModification() {
		return "usr/subpage/accountModification";
	}
	
	@RequestMapping(value = "/autoSend")
	public String autoSend() {
		return "usr/subpage/autoSend";
	}
	
	@RequestMapping(value = "/send")
	public String send() {
		return "usr/subpage/send";
	}
	
	@RequestMapping(value = "/deposit")
	public String deposit() {
		return "usr/subpage/deposit";
	}
	
	@RequestMapping(value = "/domesticStock")
	public String domesticStock() {
		return "usr/subpage/domesticStock";
	}
	
	@RequestMapping(value = "/exchangeRate")
	public String exchangeRate() {
		return "usr/subpage/exchangeRate";
	}
	
	@RequestMapping(value = "/foreignStock")
	public String foreignStock() {
		return "usr/subpage/foreignStock";
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