package com.store.repository;

import com.store.vo.TbGolfCourseVo;
import org.apache.ibatis.annotations.Param;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.Map;

@Repository
public interface TbGolfCourseRepository extends JpaRepository<TbGolfCourseVo, Long> {

    TbGolfCourseVo selectOneByCourseId(@Param("courseId") Integer courseId);
    List<TbGolfCourseVo> selectGolfCourseListBySearchMap(@Param("searchMap")Map<String, Integer> searchMap);

    int selectGolfCourseListCount();
}
