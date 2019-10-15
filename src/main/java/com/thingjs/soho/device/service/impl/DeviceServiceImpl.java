package com.thingjs.soho.device.service.impl;

import com.alibaba.fastjson.JSONObject;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.thingjs.soho.common.CommonStr;
import com.thingjs.soho.common.DeviceStatusEnum;
import com.thingjs.soho.common.Page;
import com.thingjs.soho.common.Result;
import com.thingjs.soho.device.dao.DeviceAlarmMapper;
import com.thingjs.soho.device.dao.DeviceHistoryStatusMapper;
import com.thingjs.soho.device.dao.DeviceMapper;
import com.thingjs.soho.device.dao.DeviceStatusMapper;
import com.thingjs.soho.device.entity.*;
import com.thingjs.soho.device.service.IDeviceService;
import com.thingjs.soho.utils.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author muminghui
 * @date 2019/6/28 14:06
 */
@Service
public class DeviceServiceImpl implements IDeviceService {

    @Autowired
    private DeviceMapper deviceMapper;

    @Autowired
    private DeviceStatusMapper deviceStatusMapper;

    @Autowired
    private DeviceAlarmMapper deviceAlarmMapper;

    @Autowired
    private DeviceHistoryStatusMapper deviceHistoryStatusMapper;

    @Override
    public Page findDeviceDetailListByType(DeviceDTO deviceDTO) {

        PageHelper.startPage(Integer.valueOf(deviceDTO.getPageNum()),Integer.valueOf(deviceDTO.getPageSize()));
        List<DeviceDetail> deviceDetailList = deviceMapper.findDeviceDetailListByType(deviceDTO);
        PageInfo<DeviceDetail> pageResult = new PageInfo<>(deviceDetailList);

        if(deviceDetailList!=null && deviceDetailList.size()>0){
            for(DeviceDetail detail:deviceDetailList){
                String doId = detail.getDoId();
                DeviceStatus status = deviceStatusMapper.findDeviceStatusById(doId);
                if(status!=null ){
                    detail.setLastV0(status.getLastV0());
                    detail.setLastV1(status.getLastV1());
                    detail.setPower(status.getPower());
                    detail.setPowerState(status.getPowerState());
                    detail.setOnline(status.getOnline());
                    detail.setStatus(status.getStatus());
                    detail.setTime(status.getTime());
                    if(!StringUtils.isEmpty(status.getStatus()) && DeviceStatusEnum.ALARM.getCode().equals(status.getStatus())){
                        DeviceAlarm alarm = deviceAlarmMapper.findDeviceAlarmById(doId);
                        if(alarm!=null){
                            detail.setAlarmMsg(alarm.getAlarmMsg());
                            detail.setAlarmTime(alarm.getAlarmTime());
                        }
                    }
                }
            }
        }

        Page page = new Page();
        page.setPageNum(pageResult.getPageNum());
        page.setPageSize(pageResult.getPageSize());
        page.setTotalRow((int)pageResult.getTotal());
        page.setTotalPage(pageResult.getPages());
        page.setDetail(pageResult.getList());

        PageHelper.clearPage();

        return page;
    }

    @Override
    public Result findDeviceDetailByModelId(String modelId) {
        int deviceCount = deviceMapper.findDeviceCountByModelId(modelId);
        if(deviceCount<=0){
            return Result.instanceFailResultMsg("该设备不存在");
        }
        DeviceInfo deviceInfo = deviceMapper.findDeviceInfoByModelId(modelId);
        if(deviceInfo == null || StringUtils.isEmpty(deviceInfo.getDoId())){
            return Result.instanceFailResultMsg("该设备不存在");
        }
        String id = deviceInfo.getDoId();
        DeviceStatus deviceStatus = deviceStatusMapper.findDeviceStatusById(id);
        deviceInfo.setDeviceStatus(deviceStatus);
        if(deviceStatus != null && (DeviceStatusEnum.ALARM.getCode()+"").equals(deviceStatus.getStatus())){
            DeviceAlarm deviceAlarm = deviceAlarmMapper.findDeviceAlarmById(id);
            deviceInfo.setDeviceAlarm(deviceAlarm);
        }
        return Result.instanceSuccessResult(deviceInfo);
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public Result updateDeviceModel(String id, String modelId) {
        int deviceCount = deviceMapper.findDeviceCountById(id);
        if(deviceCount<=0){
            return Result.instanceFailResultMsg("该设备不存在");
        }
        int resultCount = deviceMapper.updateDeviceModelId(id,modelId);
        if(resultCount>0){
            return Result.instanceSuccessResultMsg("绑定成功");
        }
        return Result.instanceFailResultMsg("绑定失败");
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public Map<String,Integer> updateDeviceInfo(List<DeviceInfo> deviceInfoList) {

        Map<String,Integer> map = new HashMap<>(2);
        map.put("update",0);
        map.put("insert",0);
        if(deviceInfoList==null || deviceInfoList.size()<=0) {
            return map;
        }

        List<DeviceInfo> addDeviceInfoList = new ArrayList<>();
        List<DeviceInfo> modifyDeviceInfoList = new ArrayList<>();

        for(DeviceInfo deviceInfo:deviceInfoList){
            String doId = deviceInfo.getDoId();
            int count = deviceMapper.findDeviceCountById(doId);
            if(count>0){
                modifyDeviceInfoList.add(deviceInfo);
            }else{
                addDeviceInfoList.add(deviceInfo);
            }
        }

        if(addDeviceInfoList.size()>0){
            deviceMapper.insertBatchDevice(addDeviceInfoList);
            map.put("insert",addDeviceInfoList.size());
        }
        if(modifyDeviceInfoList.size()>0){
            deviceMapper.updateBatchDeviceById(modifyDeviceInfoList);
            map.put("update",modifyDeviceInfoList.size());
        }
        return map;
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public Map<String,Integer> updateDeviceStatus(List<DeviceStatus> statusList) {
        Map<String,Integer> map = new HashMap<>(2);
        map.put("update",0);
        map.put("insert",0);
        if(statusList==null || statusList.size()<=0){
            return map;
        }

        List<DeviceStatus> addStatusList = new ArrayList<>();
        List<DeviceStatus> modifyStatusList = new ArrayList<>();

        for(DeviceStatus status:statusList){
            String doId = status.getDoId();
            int count = deviceStatusMapper.findCountById(doId);
            if(count>0){
                modifyStatusList.add(status);
            }else{
                addStatusList.add(status);
            }
        }

        if(addStatusList.size()>0){
            deviceStatusMapper.insertBatchDeviceStatus(addStatusList);
            map.put("insert",addStatusList.size());
        }
        if(modifyStatusList.size()>0){
            deviceStatusMapper.updateBatchDeviceStatusById(modifyStatusList);
            map.put("update",modifyStatusList.size());
        }

        /**修改设备展示状态*/
        for(DeviceStatus statusItem:statusList){
            updateDeviceStatus(statusItem.getDoId());
        }
        return map;
    }

    private Integer updateDeviceStatus(String doId){
        DeviceStatus status = deviceStatusMapper.findDeviceStatusById(doId);
        return deviceStatusMapper.updateDeviceStatus(doId,getStatus(status)+"");
    }

    private Integer getStatus(DeviceStatus status){
        String powerState = status.getPowerState();
        String online = status.getOnline();
        String state = status.getState();
        /**离线状态*/
        if(!StringUtils.isEmpty(online) && CommonStr.ONLINE_ERROR.equals(online)){
            return DeviceStatusEnum.OFFLINE.getCode();
        }
        /**正在充电状态*/
        if(!StringUtils.isEmpty(powerState) && CommonStr.POWERSTATE_ERROR.equals(powerState)){
            return DeviceStatusEnum.CHARGING.getCode();
        }
        /**告警状态*/
        if(!StringUtils.isEmpty(state) && CommonStr.STATE_ERROR.equals(state)){
            return DeviceStatusEnum.ALARM.getCode();
        }
        /**正常状态*/
        return DeviceStatusEnum.NORMAL.getCode();
    }

    @Transactional(rollbackFor = Exception.class)
    @Override
    public Map<String,Integer> updateDeviceHistoryStatus(List<DeviceHistoryStatus> historyStatusList) {
        Map<String,Integer> map = new HashMap<>(2);
        map.put("update",0);
        map.put("insert",0);
        if(historyStatusList==null || historyStatusList.size()<=0){
            return map;
        }
        List<DeviceHistoryStatus> addHistoryStatusList = new ArrayList<>();
        List<DeviceHistoryStatus> modifyHistoryStatusList = new ArrayList<>();

        for(DeviceHistoryStatus status:historyStatusList){
            String doId = status.getDoId();
            String time = status.getTime();
            Integer count = deviceHistoryStatusMapper.findCountById(doId,time);
            if(count>0){
                modifyHistoryStatusList.add(status);
            }else{
                addHistoryStatusList.add(status);
            }
        }

        if(addHistoryStatusList.size()>0){
            deviceHistoryStatusMapper.insertBatchDeviceStatus(addHistoryStatusList);
            map.put("insert",addHistoryStatusList.size());
        }
        if(modifyHistoryStatusList.size()>0){
            deviceHistoryStatusMapper.updateBatchDeviceStatusById(modifyHistoryStatusList);
            map.put("update",modifyHistoryStatusList.size());
        }
        return map;
    }

}
