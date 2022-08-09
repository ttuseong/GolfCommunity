package com.store.vo;

import lombok.Builder;
import lombok.Data;

import java.sql.Timestamp;

@Builder
@Data
public class TbGolfThumbVo {
    private Integer courseId;
    private String userId;
    private Timestamp regDate;
}
