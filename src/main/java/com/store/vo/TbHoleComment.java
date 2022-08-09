package com.store.vo;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Builder
@Data
public class TbHoleComment {
    private Integer commentId;
    private Integer courseId;
    private Integer holeNumber;
    private String userId;
    private String holeContent;
    private String isVisible;
    private String isDeleted;
    private Timestamp regDate;
    private Timestamp modDate;
}
