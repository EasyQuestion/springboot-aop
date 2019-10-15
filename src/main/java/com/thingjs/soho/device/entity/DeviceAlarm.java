package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/2 18:04
 */
@Data
public class DeviceAlarm {

    private String doId;
    private String deviceName;
    /**告警时间*/
    private String alarmTime;
    /**告警原因*/
    private String alarmMsg;
    private String type;
    private String title;
    private String status;
}
