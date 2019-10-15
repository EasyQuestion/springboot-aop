package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/1 16:41
 */
@Data
public class DeviceInfo {

    /**设备id*/
    private String doId ;
    /**设备名称*/
    private String deviceName;


    /**设备类型*/
    /**th 温湿度，pm pm2.5，fo 甲醛，sm 烟雾，ga 可燃气，wa 水浸*/
    private String deviceType;
    private String deviceTypeName;


    /**设备分类*/
    private String deviceClass;
    /**品牌*/
    private String brand;
    /**规格型号*/
    private String size;
    /**更换周期*/
    private String replacementCycle;
    /**生产厂家*/
    private String factoryName;

    /**设备状态*/
    private DeviceStatus deviceStatus;

    /**设备告警信息*/
    private DeviceAlarm deviceAlarm;

}
