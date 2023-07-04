package com.mycompany.app.infra.modules.codegroup;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.common.base.Pagination;

@Controller
public class CodeGroupController {

	@Autowired
	CodeGroupServiceImpl service;
	
	
	@RequestMapping("/codeGroupList")
	public String codeGroupList(@ModelAttribute("vo") CodeGroupVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		model.addAttribute("list", service.selectList(vo));
	    //페이징[s]
	    Pagination pagination = new Pagination();
	    pagination.setCurrentPageNo(vo.getPageIndex());
	    pagination.setRecordCountPerPage(vo.getPageUnit());
	    pagination.setPageSize(vo.getPageSize());
	    
	    vo.setFirstIndex(pagination.getFirstRecordIndex());
	    vo.setRecordCountPerPage(pagination.getRecordCountPerPage());
	    
	    List<CodeGroupVo> boardList = service.getList(vo);
	    int totCnt = service.getListCnt(vo);
	    
	    pagination.setTotalRecordCount(totCnt);
	    
	    vo.setEndDate(pagination.getLastPageNoOnPageList());
	    vo.setStartDate(pagination.getFirstPageNoOnPageList());
	    vo.setPrev(pagination.getXprev());
	    vo.setNext(pagination.getXnext());
	    
	    model.addAttribute("boardList",boardList);
	    model.addAttribute("totCnt",totCnt);
	    model.addAttribute("totalPageCnt",(int)Math.ceil(totCnt / (double)vo.getPageUnit()));
	    model.addAttribute("pagination",pagination);
	    //페이징[e]
		return "xdm/infra/codeGroup/codeGroupList";
	}
	
	@RequestMapping("/codeGroupForm")
	public String codeGroupForm(CodeGroupVo vo, Model model) {
		model.addAttribute("item", service.selectOne(vo));
		return "xdm/infra/codeGroup/codeGroupForm";
	}
	
	@RequestMapping("/codeGroupUpdate")
	public String codeGroupUpdate(CodeGroup dto) {
		service.update(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupDelete")
	public String codeGroupDelete(CodeGroup dto) {
		service.delete(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupInsert")
	public String codeGroupInsert(CodeGroup dto) {
		service.insert(dto);
		return "redirect:/codeGroupList";
	}
	
	@RequestMapping("/codeGroupUelete")
	public String codeGroupUelete(CodeGroup dto) {
		service.uelete(dto);
		return "redirect:/codeGroupList";
	}
	
}
