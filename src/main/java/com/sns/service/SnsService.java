package com.sns.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.dao.SnsDao;

@Service
public class SnsService {
	@Autowired
	SnsDao snsDao;
	
	public int GetTest() {
		return snsDao.GetTest();
	}
}
