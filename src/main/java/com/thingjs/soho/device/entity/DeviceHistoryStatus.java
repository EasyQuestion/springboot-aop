package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/8 15:07
 */
@Data
public class DeviceHistoryStatus {

    /**设备id*/
    private String doId ;

    /**数据的日期*/
    private String time;
    /**lastV0最低值*/
    private String minV0;
    /**lastV0最高值*/
    private String maxV0;
    /**lastV0平均值*/
    private String avgV0;
    /**lastV1最低值*/
    private String minV1;
    /**lastV1最高值*/
    private String maxV1;
    /**lastV1平均值*/
    private String avgV1;
}
