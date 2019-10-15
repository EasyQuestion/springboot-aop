package com.thingjs.soho.common;

/**
 * @author muminghui
 * @date 2019/6/27 15:14
 */
public enum ResultCodeEnum {
    /**请求成功*/
    SUCCESS(0,"请求成功"),
    /**请求失败*/
    FAIL(-1,"请求失败"),
    /**请求部分成功*/
    SUCCESS_PART(1,"请求部分成功"),
    /**系统错误*/
    SYSTEM_ERROR(-10000,"系统错误"),
    /**请求参数错误*/
    PARAM_ERROR(-10001,"请求参数错误"),
    /**token已失效*/
    TOKEN_EXPIRE(-10002,"token已失效"),
    /**请求超时或master-key错误*/
    REQUEST_ERROR(-10013,"请求超时或master-key错误");

    private Integer code;
    private String name;

    ResultCodeEnum(Integer code, String name) {
        this.code = code;
        this.name = name;
    }

    public Integer getCode() {
        return code;
    }

    public String getName() {
        return name;
    }
}
