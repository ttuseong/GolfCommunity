package com.sns.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.dao.SnsDao;
import com.sns.vo.SnsVo;

@Service
public class SnsService {
	@Autowired
	SnsDao snsDao;
	
	public List<SnsVo> GetPost(int pageNo) {
		// pageNo를 통해 앞으로 조회할 시작지점 연산
		int pageStart = (pageNo - 1) * 10;
		return snsDao.GetPost(pageStart);
	}
}
