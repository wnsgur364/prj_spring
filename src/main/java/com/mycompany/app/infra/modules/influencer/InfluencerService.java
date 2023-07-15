package com.mycompany.app.infra.modules.influencer;

import java.util.List;

public interface InfluencerService {
	
	public int selectOneCount(InfluencerVo vo);
	public List<Influencer> selectList(InfluencerVo vo);
	public Influencer selectOne(InfluencerVo vo);
	public int update(Influencer dto);
	public int insert(Influencer dto);
	public int uelete(Influencer dto);
}
