package com.store.controller;

import com.google.gson.Gson;
import com.store.service.StoreViewService;
import com.store.vo.res.StoreListResVo;
import lombok.RequiredArgsConstructor;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/store")
public class StoreController {

    @Autowired
    StoreViewService storeViewService;

    Gson gson;

    /**
     * *
     *
     * @return /list 초기페이지로 이동
     */
    @RequestMapping("")
    public String storeInit() {
        return "redirect:/store/list";
    }


    /**
     * *
     *
     * @param page     페이지 파라미터
     * @param modelMap modelmap
     * @return
     * @throws Exception
     */
    @RequestMapping("list")
    public String storeList(@RequestParam(value = "page", required = false) Integer page,
                            ModelMap modelMap) throws Exception {
        try {
            final int linePerPage = 10;
            int cursor;

            if (page == null) {
                page = 1;
            }

            if (page * linePerPage - linePerPage <= 0) {
                cursor = 0;
            } else {
                cursor = page * linePerPage - linePerPage;
            }

            StoreListResVo storeListResVo = storeViewService.getGolfCourseList(cursor, linePerPage);

            modelMap.addAttribute("golfCourseList", gson.toJson(storeListResVo.getGolfCourseVoList()));
            modelMap.addAttribute("totalCount", storeListResVo.getTotalCount());
            modelMap.addAttribute("currentPage", page);
            modelMap.addAttribute("linePerPage", linePerPage);
        } catch (Exception e) {
            // TODO 로그
            // TODO 에러 던지기
            throw new Exception();
        }


        return "/store/test"; //TODO 페이지 연동
    }


}
