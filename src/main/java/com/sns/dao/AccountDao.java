package com.sns.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sns.vo.InsertAccountParamVo;

@Repository
public class AccountDao {
	@Autowired
	SqlSession sqlSession;
	
	public int InsertAccount(InsertAccountParamVo param) {
		
		return sqlSession.insert("account.insertAccount", param);
	}
}
