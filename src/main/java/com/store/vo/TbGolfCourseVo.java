package com.store.vo;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Builder
@Data
public class TbGolfCourseVo {
    private Integer courseId;
    private String courseName;
    private String courseLogo;
    private String courseImgUrl;
    private Integer addressCategory;
    private String address;
    private String telephone;
    private String isVisible;
    private String isDeleted;
    private Timestamp regDate;
}
