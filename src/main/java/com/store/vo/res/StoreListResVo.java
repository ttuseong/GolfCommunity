package com.store.vo.res;

import com.store.vo.TbGolfCourseVo;
import lombok.*;

import java.util.List;

@AllArgsConstructor(access = AccessLevel.PRIVATE)
@NoArgsConstructor
@Data
@Builder
public class StoreListResVo {
    private List<TbGolfCourseVo> golfCourseVoList;
    private int totalCount;
}
