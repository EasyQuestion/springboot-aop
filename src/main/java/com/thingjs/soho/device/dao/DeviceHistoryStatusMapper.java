package com.thingjs.soho.device.dao;

import com.thingjs.soho.device.entity.DeviceHistoryStatus;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author muminghui
 * @date 2019/7/8 15:51
 */
@Mapper
@Component
public interface DeviceHistoryStatusMapper {

    /***
     * 根据设备ID查看是否存在
     * @param id
     * @param time
     * @return
     */
    @Select("select count(*) from device_history_status where doid=#{id} and time=#{time}")
    Integer findCountById(@Param("id")String id,@Param("time") String time);

    /***
     * 批量插入设备历史状态
     * @param deviceHistoryStatusList
     * @return
     */
    @Insert("<script>insert into device_history_status(doid, time, min_v0, max_v0, avg_v0, min_v1, max_v1, avg_v1, gmt_create, gmt_modified)values " +
            " <foreach item=\"item\" collection=\"list\" separator=\",\"> " +
            "   (#{item.doId}, #{item.time}, #{item.minV0}, #{item.maxV0}, #{item.avgV0}, #{item.minV1}, #{item.maxV1},#{item.avgV1},now(),now()) " +
            " </foreach> "+
            "</script>")
    Integer insertBatchDeviceStatus(@Param("list") List<DeviceHistoryStatus> deviceHistoryStatusList);

    /***
     * 批量修改设备历史状态
     * @param deviceHistoryStatusList
     * @return
     */
    @Update("<script><foreach collection=\"list\" item=\"item\" separator=\";\">" +
            "   update device_history_status set min_v0=#{item.minV0},max_v0=#{item.maxV0}, avg_v0=#{item.avgV0}, " +
            "    min_v1=#{item.minV1},max_v1=#{item.maxV1},avg_v1=#{item.avgV1}," +
            "    gmt_modified=now() where doid=#{item.doId} and time=#{item.time} " +
            "</foreach>" +
            "</script>")
    Integer updateBatchDeviceStatusById(@Param("list") List<DeviceHistoryStatus> deviceHistoryStatusList);
}
