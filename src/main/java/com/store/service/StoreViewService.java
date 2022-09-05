package com.store.service;

import com.store.repository.TbGolfCourseRepository;
import com.store.vo.TbGolfCourseVo;
import com.store.vo.res.StoreListResVo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

@Service
public class StoreViewService {
    @Autowired
    TbGolfCourseRepository tbGolfCourseRepository;


    /**
     * GolfCourse 목록 조회* 
     * @param cursor
     * @param linePerPage
     * @return
     * @throws Exception
     */
    public StoreListResVo getGolfCourseList(final Integer cursor,final int linePerPage) throws Exception {

        StoreListResVo storeListResVo = new StoreListResVo();

        int totalCount = selectGolfCourseListCount();

        HashMap<String,Integer> searchMap = new HashMap<>();
        searchMap.put("CURSOR", cursor);
        searchMap.put("COUNT",linePerPage);

        List<TbGolfCourseVo>  golfCourseVoList = selectGolfCourseList(searchMap);

        //FIXME 검증 필요
        storeListResVo.setGolfCourseVoList(golfCourseVoList);

        storeListResVo.setTotalCount(totalCount);

        return storeListResVo;
    }

    private List<TbGolfCourseVo> selectGolfCourseList(HashMap<String, Integer> searchMap) throws Exception {
        List<TbGolfCourseVo> golfCourseVoList;

        try{
            golfCourseVoList = tbGolfCourseRepository.selectGolfCourseListBySearchMap(searchMap);
        }catch (Exception e){
            //TODO 예외 던지기
            throw new Exception();
        }
        return golfCourseVoList;
    }

    /**
     * GolfCourse 전체 갯수 조회*
     * @return
     * @throws Exception
     */
    private int selectGolfCourseListCount() throws Exception {
        int totalCount = 0;

        try{
            totalCount = tbGolfCourseRepository.selectGolfCourseListCount();
        }catch (Exception e){
            //TODO 예외 던지기
            throw new Exception();
        }
        return totalCount;
    }
}
