package com.thingjs.soho.common;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/10 9:36
 */
@Data
public class Page {

    /**当前页数*/
    private Integer pageNum;
    /**每页个数*/
    private Integer pageSize;
    /**总页数*/
    private Integer totalPage;
    /**总个数*/
    private Integer totalRow;

    Object detail;
}
