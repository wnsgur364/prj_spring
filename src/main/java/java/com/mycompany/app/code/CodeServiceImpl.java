package com.mycompany.app.code;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class CodeServiceImpl implements CodeService {

	@Autowired
	CodeDao cdao;
	
	@Override
	public List<Code> selectList() {return cdao.selectList();}
	
}
