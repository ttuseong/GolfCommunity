package com.store.vo;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Builder
@Data
public class TbGolfReviewVo {
    private Integer courseId;
    private String userId;
    private String reviewContent;
    private Integer courseScore;
    private String isVisible;
    private String isDeleted;
    private Timestamp regDate;
    private Timestamp modDate;
}
