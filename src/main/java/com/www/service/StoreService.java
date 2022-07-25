package com.www.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.www.dao.StoreDao;

@Service
public class StoreService {
	@Autowired
	StoreDao storeDao;
	
	public int GetTest() {
		return storeDao.GetTest();
	}
}
