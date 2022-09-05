package com.sns.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sns.dao.SnsDao;
import com.sns.vo.GetPostCommentResultVo;
import com.sns.vo.GetPostDetailParamVo;
import com.sns.vo.GetPostDetailResultVo;
import com.sns.vo.GetPostImgsResultVo;
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
	
	public Map<String, Object> GetPostDetail(GetPostDetailParamVo param) {
		//변수 선언
		Map<String, Object> resultMap = new HashMap<String, Object>();
			
		// 게시글 상세 내용 조회
		resultMap.put("postDetail", snsDao.GetPostDetail(param));
		
		// 게시글 이미지 조회
		resultMap.put("imgs", snsDao.GetPostImgs(param.getPostId()));
		
		// 게시글 댓글 조회
		resultMap.put("commentList", snsDao.GetPostComment(param.getPostId()));
		
		return resultMap;
	}
}
