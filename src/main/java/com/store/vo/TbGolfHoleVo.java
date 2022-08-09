package com.store.vo;

import lombok.Builder;
import lombok.Data;

@Builder
@Data
public class TbGolfHoleVo {
    private Integer courseId;
    private Integer holeNumber;
    private String holeImgUrl;
    private String holeName;
}
