package com.store.repository;

import com.store.vo.TbGolfCourseVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbGolfCourseRepository {

    TbGolfCourseVo selectOneByCourseId(@Param("courseId") Integer courseId);
    List<TbGolfCourseVo> selectGolfCourseListBySearchMap(@Param("searchMap")Map<String, Object> searchMap);
}
