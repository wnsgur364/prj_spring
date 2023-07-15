package com.mycompany.app.infra.modules.influencer;

import java.util.List;

import javax.annotation.Resource;
import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

@Repository
public class InfluencerDao {
	
	@Inject
	@Resource(name =  "sqlSession")
	private SqlSession sqlSession;
	
	private static String namespace = "com.mycompany.app.infra.modules.influencer.InfluencerMapper";
	
	public int selectOneCount(InfluencerVo vo) { return sqlSession.selectOne(namespace + ".selectOneCount", vo); }
	public List<Influencer> selectList(InfluencerVo vo) { return sqlSession.selectList(namespace + ".selectList", vo); }
	public Influencer selectOne(InfluencerVo vo) { return sqlSession.selectOne(namespace + ".selectOne", vo); }
	public int update(Influencer dto) { return sqlSession.update(namespace + ".update", dto); }
	public int uelete(Influencer dto) { return sqlSession.update(namespace + ".uelete", dto); }
	public int insert(Influencer dto) { return sqlSession.insert(namespace + ".insert", dto); }
	
}
 