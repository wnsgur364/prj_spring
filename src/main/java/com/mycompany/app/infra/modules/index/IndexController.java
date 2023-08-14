package com.mycompany.app.infra.modules.index;

import java.io.BufferedReader;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fasterxml.jackson.databind.ObjectMapper;
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
	public String accountUsrView(@ModelAttribute("vo") TransactionVo tvo, Model tModel , AccountVo avo, Model aModel) {
		tvo.setShKeyword(tvo.getShKeyword() == null ? "" : tvo.getShKeyword());
		tvo.setParamsPaging(trService.selectOneCount(tvo));
		aModel.addAttribute("group", acService.selectList(avo));
		
		if (tvo.getTotalRows() > 0) {
			tModel.addAttribute("list", trService.selectList(tvo));
		} else {
//			by pass
		}
		return "usr/infra/index/accountUsrView";
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
	
	@RequestMapping("/accountDelete")
	public String accountDelete(Account dto) {
		acService.uelete(dto);
		return "redirect:/accountUsrView";
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
		trService.transfer(dto);

	    return "redirect:/accountUsrView";
	}
	
	@RequestMapping("/depositUsrView")
	public String depositUsrView(TransactionVo vo, Model model, AccountVo groupvo, Model groupModel) {
		model.addAttribute("item", trService.selectOne(vo));
		groupModel.addAttribute("group", acService.selectList(groupvo));
		
		return "usr/infra/index/depositUsrView";
	}
	
	@RequestMapping("/depositInsert")
	public String depositInsert(Transaction dto) {
		trService.deposit(dto);
		return "redirect:/accountUsrView";
	}
	
	@RequestMapping(value = "/indexXdmView")
	public String indexXdmView() {
		return "xdm/infra/index/indexXdmView";
	}
	
	@RequestMapping(value = "/covidRestApi")
	public String covidRestApi(Model model) throws Exception {
		System.out.println("adsada");
		String apiUrl = "http://apis.data.go.kr/1471000/CovidDagnsRgntProdExprtStusService/getMmCovidDagnsRgntExprtStusInq?serviceKey=cJZCAaKLXQVTAdWHQZ2e4QAP9scRJY2NuYNfZ8ysuMU1IZginxVKZT2DucfvChVv8CDgU23hz39uiw8uPuKzQA%3D%3D&numOfRows=3&pageNo=1&type=json";

		URL url = new URL(apiUrl);
		HttpURLConnection httpURLConnection = (HttpURLConnection) url.openConnection();
		httpURLConnection.setRequestMethod("GET");
		
		BufferedReader bufferedReader;
		if (httpURLConnection.getResponseCode() >= 200 && httpURLConnection.getResponseCode() <= 300) {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getInputStream()));
		} else {
			bufferedReader = new BufferedReader(new InputStreamReader(httpURLConnection.getErrorStream()));
		}
		
		StringBuilder stringBuilder = new StringBuilder();
		String line;
		while((line = bufferedReader.readLine()) != null) {
			System.out.println("line: " + line);
			stringBuilder.append(line);
		}
		
		bufferedReader.close();
		httpURLConnection.disconnect();
		
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, Object> map = objectMapper.readValue(stringBuilder.toString(), Map.class);
		
		System.out.println("########Map");
		for (String key : map.keySet()) {
			String value = String.valueOf(map.get(key));	// ok
			System.out.println("[key]: " + key + ", [value]: " + value);
		}
		
		Map<String, Object> header = new HashMap<String, Object>();
		header = (Map<String, Object>) map.get("header");
		
		System.out.println("######## Header");
		for (String key : header.keySet()) {
			String value = String.valueOf(header.get(key));	// ok
			System.out.println("[key]:" + key + ", [value]:" + value);
		}
		
//		String aaa = (String) header.get("resultCode");
//		
//		System.out.println("header.get(\"resultCode\"): " + header.get("resultCode"));
//		System.out.println("header.get(\"resultMsg\"): " + header.get("resultMsg"));
		
		Map<String, Object> body = new HashMap<String, Object>();
		body = (Map<String, Object>) map.get("body");
		
		List<Home> items = new ArrayList<Home>();
		items = (List<Home>) body.get("items");
		
		System.out.println("items.size(): " + items.size());
		
		System.out.println("items.toString(): " + items.toString());
		
		model.addAllAttributes(header);
		model.addAllAttributes(body);
		
//		model.addAttribute("hdeader", header);
//		model.addAttribute("body", body);
		
		return "usr/infra/index/covidRestApi";
	}
	
}
