package com.thingjs.soho.device.entity;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/7/2 17:17
 */
@Data
public class WeatherVO {

    private String weather;
    private String weatherUrl;
    private String temperature;
    private String year;
    private String month;
    private String day;
    private String hour;
    private String minute;
}
