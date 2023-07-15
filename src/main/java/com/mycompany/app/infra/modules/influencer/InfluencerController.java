package com.mycompany.app.infra.modules.influencer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class InfluencerController {

	@Autowired
	InfluencerServiceImpl service;
	
	@RequestMapping("/influencerList")
	public String influencerList(@ModelAttribute("vo") InfluencerVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<Influencer> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "xdm/infra/influencer/influencerList";
	}
	
	@RequestMapping("/influencerForm")
	public String influencerForm(InfluencerVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "xdm/infra/influencer/influencerForm";
	}
	
	@RequestMapping("/influencerUpdate")
	public String influencerUpdate(Influencer dto) {
		service.update(dto);
		return "redirect:/influencerList";
	}
	
	@RequestMapping("/influencerInsert")
	public String influencerInsert(Influencer dto) {
		service.insert(dto);
		return "redirect:/influencerList";
	}
	
	@RequestMapping("/influencerUelete")
	public String influencerUelete(Influencer dto) {
		service.uelete(dto);
		return "redirect:/influencerList";
	}
	
}
