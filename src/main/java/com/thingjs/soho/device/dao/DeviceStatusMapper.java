package com.thingjs.soho.device.dao;

import com.thingjs.soho.device.entity.DeviceStatus;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author muminghui
 * @date 2019/7/3 18:26
 */
@Mapper
@Component
public interface DeviceStatusMapper {

    /***
     * 根据设备ID获取设备最新状态
     * @param id 设备ID
     * @return
     */
    @Select(" select doid doId,device_name deviceName,last_v0 lastV0,last_v1 lastV1,power,power_state powerState,online," +
            "  time,state,status from device_status where doid=#{id} ")
    DeviceStatus findDeviceStatusById(@Param("id") String id);

    /***
     * 根据设备ID查看是否存在
     * @param id
     * @return
     */
    @Select("select count(*) from device_status where doid=#{id}")
    Integer findCountById(@Param("id") String id);

    /***
     * 批量插入设备状态
     * @param deviceStatusList
     * @return
     */
    @Insert("<script>insert into device_status(doid, device_name, last_v0, last_v1, power, power_state, state, online, time, gmt_create, gmt_modified)values " +
            " <foreach item=\"item\" collection=\"list\" separator=\",\"> " +
            "   (#{item.doId}, #{item.deviceName}, #{item.lastV0}, #{item.lastV1},#{item.power}, #{item.powerState},#{item.state}, #{item.online}, #{item.time},now(),now()) " +
            " </foreach> "+
            "</script>")
    Integer insertBatchDeviceStatus(@Param("list") List<DeviceStatus> deviceStatusList);

    /***
     * 批量修改设备状态
     * @param deviceStatusList
     * @return
     */
    @Update("<script><foreach collection=\"list\" item=\"item\" separator=\";\">" +
            "   update device_status set device_name=#{item.deviceName},last_v0=#{item.lastV0}, last_v1=#{item.lastV1}, " +
            "    power=#{item.power},power_state=#{item.powerState},state=#{item.state},online=#{item.online},time=#{item.time}," +
            "    gmt_modified=now() where doid=#{item.doId} " +
            "</foreach>" +
            "</script>")
    Integer updateBatchDeviceStatusById(@Param("list") List<DeviceStatus> deviceStatusList);

    /**
     * 修改设备状态，0正常，1异常
     * @param doId
     * @param state
     * @return
     */
    @Update("update device_status set state=#{state},gmt_modified=now() where doid=#{doId} ")
    Integer updateDeviceState(@Param("doId")String doId,@Param("state")String state);

    /**
     * 修改设备展示状态 0正常，1正在充电，2离线，3告警
     * @param doId
     * @param status
     * @return
     */
    @Update("update device_status set status=#{status},gmt_modified=now() where doid=#{doId} ")
    Integer updateDeviceStatus(@Param("doId")String doId,@Param("status")String status);
}
