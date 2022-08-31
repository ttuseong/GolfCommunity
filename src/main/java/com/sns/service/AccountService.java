package com.sns.service;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.dao.AccountDao;
import com.sns.vo.InsertAccountParamVo;

@Service
public class AccountService {
	@Autowired
	AccountDao accountDao;
	
	public Map<String, Integer> InsertAccount(InsertAccountParamVo param) {
		
		Map<String, Integer> map = new HashMap<String, Integer>();
		map.put("resultCode", accountDao.InsertAccount(param));
		
		return map;
	}
}
