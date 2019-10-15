package com.thingjs.soho.common;

/**
 * @author muminghui
 * @date 2019/7/1 17:24
 */
public enum DeviceStatusEnum {
    /**正常*/
    NORMAL(0,"正常"),
    /**正在充电*/
    CHARGING(1,"正在充电"),
    /**离线*/
    OFFLINE(2,"离线"),
    /**告警*/
    ALARM(3,"告警")
;
    private Integer code;
    private String name;

    DeviceStatusEnum(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public Integer getCode() {
        return code;
    }

    public String getName() {
        return name;
    }

    public static String getNameByCode(Integer code){
        for(DeviceStatusEnum statusEnum:DeviceStatusEnum.values()){
            if(statusEnum.getCode().equals(code)){
                return statusEnum.getName();
            }
        }
        return "";
    }
}
