package com.www.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class StoreDao {
	@Autowired
	SqlSession sqlSession;
	
	public int GetTest() {
		return sqlSession.selectOne("test.testQuery");
	}
}
