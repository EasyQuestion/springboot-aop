package com.thingjs.soho.common;

import lombok.Data;

/**
 * @author muminghui
 * @date 2019/6/27 15:13
 */
@Data
public class Result {

    private Integer code;
    private String msg;
    private Object data;

    private Result(){

    }

    private Result(Integer code, String msg) {
        this(code,msg,null);
    }

    private Result(Integer code, String msg, Object data) {
        this.code = code;
        this.msg = msg;
        this.data = data;
    }

    public static Result instanceSuccessResultMsg(String msg){
        return new Result(ResultCodeEnum.SUCCESS.getCode(),msg);
    }

    public static Result instanceSuccessResult(Object data){
        return new Result(ResultCodeEnum.SUCCESS.getCode(),ResultCodeEnum.SUCCESS.getName(),data);
    }

    public static Result instanceSuccessResult(String msg,Object data){
        return new Result(ResultCodeEnum.SUCCESS.getCode(),msg,data);
    }

    public static Result instanceFailResultMsg(String msg){
        return new Result(ResultCodeEnum.FAIL.getCode(),msg);
    }

    public static Result instanceFailResult(Object data){
        return new Result(ResultCodeEnum.FAIL.getCode(),ResultCodeEnum.FAIL.getName(),data);
    }

    public static Result instanceFailResult(String msg,Object data){
        return new Result(ResultCodeEnum.FAIL.getCode(),msg,data);
    }

    public static Result instanceResult(ResultCodeEnum resultCodeEnum){
        return new Result(resultCodeEnum.getCode(),resultCodeEnum.getName(),null);
    }

    public static Result instanceResult(ResultCodeEnum resultCodeEnum,Object data){
        return new Result(resultCodeEnum.getCode(),resultCodeEnum.getName(),data);
    }

    public Boolean isSuccess(){
        if(ResultCodeEnum.SUCCESS.getCode().equals(code)){
            return true;
        }
        return false;
    }
}
