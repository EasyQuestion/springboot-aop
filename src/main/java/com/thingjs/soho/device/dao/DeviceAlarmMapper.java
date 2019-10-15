package com.thingjs.soho.device.dao;

import com.thingjs.soho.device.entity.DeviceAlarm;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;
import org.springframework.stereotype.Component;

/**
 * @author muminghui
 * @date 2019/7/3 18:26
 */
@Mapper
@Component
public interface DeviceAlarmMapper {

    /***
     * 根据设备ID获取设备警告信息
     * @param id 设备ID
     * @return
     */
    @Select(" select doid doId,device_name deviceName, alarm_msg alarmMsg, alarm_time alarmTime " +
            " from device_alarm where doid=#{id} " +
            " order by alarm_time desc limit 1 ")
    DeviceAlarm findDeviceAlarmById(@Param("id") String id);

    /**
     * 保存设备告警信息
     * @param alarm
     * @return
     */
    @Insert(" insert into device_alarm(doid, device_name, alarm_msg, " +
            " alarm_time, gmt_create, gmt_modify, status, type, title)" +
            " values(#{doId},#{deviceName},#{alarmMsg},#{alarmTime},now(),now(),#{status},#{type},#{title})")
    Integer saveDeviceAlarm(DeviceAlarm alarm);
}
