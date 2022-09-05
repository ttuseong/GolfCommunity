package com.sns.dao;

import java.util.List;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.sns.vo.GetPostCommentResultVo;
import com.sns.vo.GetPostDetailParamVo;
import com.sns.vo.GetPostDetailResultVo;
import com.sns.vo.GetPostImgsResultVo;
import com.sns.vo.SnsVo;

@Repository
public class SnsDao {
	@Autowired
	SqlSession sqlSession;
	
	// 게시글 조회
	public List<SnsVo> GetPost(int pageNo) {
		return sqlSession.selectList("sns.GetPost", pageNo);
	}
	
	//게시글 내용 조회
	public GetPostDetailResultVo GetPostDetail(GetPostDetailParamVo param){
		return sqlSession.selectOne("sns.GetPostDetail", param);
	}
	
	
	//게시글 이미지 조회
	public List<GetPostImgsResultVo> GetPostImgs(int postId) {
		return sqlSession.selectList("sns.GetPostImgs", postId);
	}
	
	//게시글 댓글 조회
	public List<GetPostCommentResultVo> GetPostComment(int postId){
		return sqlSession.selectList("sns.GetPostComment", postId);
	}
}
