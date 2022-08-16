package com.sns.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sns.vo.SnsVo;

@Repository
public class SnsDao {
	@Autowired
	SqlSession sqlSession;
	
	public List<SnsVo> GetPost(int pageNo) {
		return sqlSession.selectList("sns.GetPost", pageNo);
	}
}
