package com.mycompany.app.infra.modules.influencer;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class InfluencerServiceImpl implements InfluencerService {
	
	@Autowired
	InfluencerDao dao;

	@Override
	public int selectOneCount(InfluencerVo vo) {
		return dao.selectOneCount(vo);
	}
	
	@Override
	public List<Influencer> selectList(InfluencerVo vo) { 
		return dao.selectList(vo); 
	}
	
	@Override
	public Influencer selectOne(InfluencerVo vo) { 
		return dao.selectOne(vo); 
	}
	
	@Override
	public int update(Influencer dto) {
		return dao.update(dto); 
	}
	
	@Override
	public int insert(Influencer dto) {
		return dao.insert(dto);
	}

	@Override
	public int uelete(Influencer dto) {
		return dao.uelete(dto);
	}
	
}
