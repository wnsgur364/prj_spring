package com.mycompany.app.infra.modules.code;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletResponse;

import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.CellStyle;
import org.apache.poi.ss.usermodel.HorizontalAlignment;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.app.infra.modules.codegroup.CodeGroupServiceImpl;
import com.mycompany.app.infra.modules.codegroup.CodeGroupVo;

@Controller
public class CodeController {

	@Autowired
	CodeServiceImpl service;
	@Autowired
	CodeGroupServiceImpl groupService;
	
	@RequestMapping("/codeList")
	public String codeList(@ModelAttribute("vo") CodeVo vo, Model model) {
		vo.setShKeyword(vo.getShKeyword() == null ? "" : vo.getShKeyword());
		vo.setParamsPaging(service.selectOneCount(vo));
		if (vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			model.addAttribute("list", list);
		} else {
//			by pass
		}
		
		return "xdm/infra/code/codeList";
	}
	
	@RequestMapping("/codeForm")
	public String codeForm(CodeVo vo, Model model, CodeGroupVo groupvo, Model groupModel) {
		model.addAttribute("item", service.selectOne(vo));
		groupModel.addAttribute("group", groupService.selectList(groupvo));
		return "xdm/infra/code/codeForm";
	}
	
	@RequestMapping("/codeUpdate")
	public String codeUpdate(Code dto) {
		service.update(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("/codeInsert")
	public String codeInsert(Code dto) {
		service.insert(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("/codeUelete")
	public String codeUelete(Code dto) {
		service.uelete(dto);
		return "redirect:/codeList";
	}
	
	@RequestMapping("excelDownload")
    public void excelDownload(CodeVo vo, HttpServletResponse httpServletResponse) throws Exception {
		
		SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
		Date now = new Date();
		String now_dt = format.format(now);
		
//		setSearch(vo);
		vo.setParamsPaging(service.selectOneCount(vo));

		if (vo.getTotalRows() > 0) {
			List<Code> list = service.selectList(vo);
			
//			Workbook workbook = new HSSFWorkbook();	// for xls
	        Workbook workbook = new XSSFWorkbook();
	        Sheet sheet = workbook.createSheet("첫번째 시트");
	        CellStyle cellStyle = workbook.createCellStyle();        
	        Row row = null;
	        Cell cell = null;
	        int rowNum = 0;
			
//	        each column width setting
	        sheet.setColumnWidth(0, 2100);
	        sheet.setColumnWidth(1, 3100);

//	        Header
	        String[] tableHeader = {"코드그룹 코드", "코드그룹 이름", "코드", 
//	        		"대체 코드", 
	        		"코드 이름"
//	        		, "코드 이름 (영문)", "사용", "순서", "등록일", "수정일"
	        		
	        };

	        row = sheet.createRow(rowNum++);
			for(int i=0; i<tableHeader.length; i++) {
				cell = row.createCell(i);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
				cell.setCellValue(tableHeader[i]);
			}

//	        Body
	        for (int i=0; i<list.size(); i++) {
	            row = sheet.createRow(rowNum++);
	            
//	            String type: null 전달 되어도 ok
//	            int, date type: null 시 오류 발생 하므로 null check
//	            String type 이지만 정수형 데이터가 전체인 seq 의 경우 캐스팅
	            
	            cell = row.createCell(0);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	if(list.get(i).getCodeGroup_seq() != null) cell.setCellValue(Integer.parseInt(list.get(i).getCodeGroup_seq()));
	            
	            cell = row.createCell(1);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(list.get(i).getCodeGroupName());
	        	
	            cell = row.createCell(2);
	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
	        	cell.setCellStyle(cellStyle);
	        	cell.setCellValue(Integer.parseInt(list.get(i).getSeq()));
	        	
//	            cell = row.createCell(3);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	cell.setCellValue(list.get(i).getIfcdSeqAnother());
//	            
	            cell = row.createCell(3);
	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
	            cell.setCellStyle(cellStyle);
	            cell.setCellValue(list.get(i).getName());
//	            
//	            cell = row.createCell(5);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            cell.setCellValue(list.get(i).getIfcdNameEng());
//     
//	            cell = row.createCell(6);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getIfcdUseNy() != null) cell.setCellValue(list.get(i).getIfcdUseNy() == 0 ? "N" : "Y");
//	            
//	            cell = row.createCell(7);
//	            cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	            cell.setCellStyle(cellStyle);
//	            if(list.get(i).getIfcdOrder() != null) cell.setCellValue(list.get(i).getIfcdOrder());
//	            
//	            cell = row.createCell(8);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getRegDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getRegDateTime()));
//	        	
//	        	cell = row.createCell(9);
//	        	cellStyle.setAlignment(HorizontalAlignment.CENTER);
//	        	cell.setCellStyle(cellStyle);
//	        	if(list.get(i).getModDateTime() != null) cell.setCellValue(UtilDateTime.dateTimeToString(list.get(i).getModDateTime()));
	        }

	        httpServletResponse.setContentType("ms-vnd/excel");
//	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=example.xls");	// for xls
	        httpServletResponse.setHeader("Content-Disposition", "attachment;filename=code_" + now_dt + ".xlsx");

	        workbook.write(httpServletResponse.getOutputStream());
	        workbook.close();
		}
    }
	
}
