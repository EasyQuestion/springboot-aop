package com.thingjs.soho.device.service;

import com.thingjs.soho.common.Page;
import com.thingjs.soho.common.Result;
import com.thingjs.soho.device.entity.*;

import java.util.List;
import java.util.Map;

/**
 * @author muminghui
 * @date 2019/6/28 14:06
 */
public interface IDeviceService {

    /**
     * 获取设备列表
     * @param deviceDTO
     * @return
     */
    Page findDeviceDetailListByType(DeviceDTO deviceDTO);

    /**
     * 根据设备ID获取设备详情
     * @param modelId
     * @return
     */
    Result findDeviceDetailByModelId(String modelId);

    /**
     * 绑定设备与场景中的模型
     * @param id
     * @param modelId
     * @return
     */
    Result updateDeviceModel(String id,String modelId);

    /**
     * 添加或修改设备信息
     * @param deviceInfoList
     * @return
     */
    Map<String,Integer>  updateDeviceInfo(List<DeviceInfo> deviceInfoList);


    /**
     * 添加或修改设备的最新状态
     * @param statusList
     * @return
     */
    Map<String,Integer>  updateDeviceStatus(List<DeviceStatus> statusList);

    /**
     * 添加或修改设备历史状态
     * @param historyStatusList
     * @return
     */
    Map<String,Integer>  updateDeviceHistoryStatus(List<DeviceHistoryStatus> historyStatusList);

}
