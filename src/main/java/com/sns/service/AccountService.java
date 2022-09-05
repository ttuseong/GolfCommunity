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
	
	public int InsertAccount(InsertAccountParamVo param) {
		int resultCode = 0;
		try {
			resultCode = accountDao.InsertAccount(param);
		}
		catch (Exception e) {
			System.out.println(e.toString());
			
			resultCode = 0;
		}
		
		return resultCode;
	}
}
