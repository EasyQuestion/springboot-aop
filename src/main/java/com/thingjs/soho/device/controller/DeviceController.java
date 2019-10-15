package com.thingjs.soho.device.controller;

import com.thingjs.soho.common.Page;
import com.thingjs.soho.common.Result;
import com.thingjs.soho.device.entity.DeviceDTO;
import com.thingjs.soho.device.service.IDeviceService;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.StringUtils;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author muminghui
 * @date 2019/6/28 14:06
 */
@Slf4j
@Controller
@RequestMapping(value = "/api")
public class DeviceController {

    @Autowired
    private IDeviceService deviceService;

    /**
     * 根据设备类型获取设备列表
     * @param deviceDto
     * @return 设备列表中返回设备的ID、名称、模型ID、状态信息和告警信息
     */
    @GetMapping("findDeviceByType")
    @ResponseBody
    public Result findDeviceByType(DeviceDTO deviceDto){
        if(deviceDto.getPageNum()==null || StringUtils.isEmpty(deviceDto.getPageNum())){
            deviceDto.setPageNum("1");
        }
        if(deviceDto.getPageSize()==null || StringUtils.isEmpty(deviceDto.getPageSize())){
            deviceDto.setPageSize("20");
        }
        Page page = deviceService.findDeviceDetailListByType(deviceDto);
        return Result.instanceSuccessResult(page);
    }

    /**
     * 根据模型ID获取设备详情
     * @param modelId
     * @return
     */
    @GetMapping("findDeviceDetailById")
    @ResponseBody
    public Result findDeviceDetailByModelId(String modelId){
        if(modelId == null || StringUtils.isEmpty(modelId)){
            return Result.instanceFailResultMsg("参数无效");
        }
        return deviceService.findDeviceDetailByModelId(modelId.trim());
    }

    /***
     * 绑定设备与场景模型
     * @param id 设备ID
     * @param modelId 场景中的模型ID
     * @return
     */
    @PostMapping("bindDeviceToModel")
    @ResponseBody
    public Result bindDeviceToModel(String id,String modelId){
        if(id ==null || StringUtils.isEmpty(id)|| modelId == null || StringUtils.isEmpty(modelId)){
            return Result.instanceFailResultMsg("参数不能为空");
        }
        return deviceService.updateDeviceModel(id,modelId);
    }

    /***
     * 查看日志信息
     * @return
     */
    @PostMapping("logError")
    @ResponseBody
    public Result logError(){
        log.error("hello world,error log");
        log.info("hello world,info log");
        log.warn("hello world,warn log");
        log.debug("hello world,debug log");
        return Result.instanceFailResultMsg("error");
    }

}
