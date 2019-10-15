package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/2 17:50
 */
@Data
public class DeviceStatus {

    /**设备id*/
    private String doId ;
    /**设备名称*/
    private String deviceName;

    /**设备状态*/
    /***设备类型    实时监测值lastV0    实时监测值lastV1
     *   烟感，        浓度；
     *   温湿度，      温度、              湿度；
     *   可燃气，     浓度值；
     *   PM2.5        实时值；
     *   水浸，       水位值；
     */
    /**实时监测值lastV0*/
    private String lastV0;
    /**实时监测值lastV1*/
    private String lastV1;


    /**电量（单位%）*/
    private String power;
    /**设备充电状态，0-未充电，1-正在充电*/
    private String powerState;
    /**设备是否在线,1 - 在线，0 - 离线*/
    private String online;
    /**设备状态,0 正常  1 异常*/
    private String state;
    /**最后一次上传数据的时间*/
    private String time;
    /**设备状态（0正常、1正在充电、2离线、3告警）*/
    private String status;

}
