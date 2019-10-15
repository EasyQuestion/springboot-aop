package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/4 13:32
 */
@Data
public class DeviceDetail {

    /**设备id*/
    private String doId ;
    /**设备名称*/
    private String deviceName;
    /**场景中的模型ID*/
    private String modelId;

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
    /**最后一次上传数据的时间*/
    private String time;
    /**设备状态（0正常、1正在充电、2离线、3告警）*/
    private String status;

    /**告警时间*/
    private String alarmTime;
    /**告警原因*/
    private String alarmMsg;
}
