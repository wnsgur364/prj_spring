package com.mycompany.app.infra.modules.index;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@ResponseBody
	@RequestMapping("/getAccountAndTransactions")
	public Map<String, Object> getAccountAndTransactions(HttpSession httpSession) {
	    Map<String, Object> returnMap = new HashMap<String, Object>();

	    // 1. 세션에서 아이디 가져오기
	    String id = (String) httpSession.getAttribute("id");
	    if (id == null) {
	        // 세션에 아이디가 없으면 에러 메시지 반환
	        returnMap.put("rt", "error");
	        returnMap.put("message", "아이디 정보가 없습니다. 로그인을 먼저 진행해주세요.");
	        return returnMap;
	    }

	    // 2. 아이디 체크 (여기서 필요한 경우 id를 MemberVo 객체에 설정하여 사용)
	    MemberVo vo = new MemberVo();
	    vo.setId(id);
	    int rtNum = mbService.selectOneIdCheck(vo);

	    if (rtNum == 0) {
	        // 아이디가 존재하지 않으면 에러 메시지 반환
	        returnMap.put("rt", "error");
	        returnMap.put("message", "아이디가 존재하지 않습니다.");
	    } else {
	        // 아이디가 존재하는 경우 계좌 정보와 거래 내역 조회
	        Account account = acService.getAccountInfoByMemberSeq(vo.getSeq());
	        List<Transaction> transactions = trService.getAccountTransactionsByAccountSeq(account.getSeq());

	        // 결과를 반환
	        returnMap.put("rt", "success");
	        returnMap.put("account", account);
	        returnMap.put("transactions", transactions);
	    }

	    return returnMap;
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
