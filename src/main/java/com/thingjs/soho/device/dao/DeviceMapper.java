package com.thingjs.soho.device.dao;

import com.thingjs.soho.device.entity.DeviceDTO;
import com.thingjs.soho.device.entity.DeviceDetail;
import com.thingjs.soho.device.entity.DeviceInfo;
import com.thingjs.soho.device.entity.DeviceVO;
import org.apache.ibatis.annotations.*;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * @author muminghui
 * @date 2019/6/28 13:57
 */
@Mapper
@Component
public interface DeviceMapper {

    /**
     * 获取所有设备ID和设备类型
     * @param
     * @return 设备列表中只返回设备的ID、设备类型缩写
     */
    @Select(" select doid doId,type deviceType from device ")
    List<DeviceVO> findAllDeviceVoList();

    /**
     * 根据设备类型获取设备详情列表
     * @param deviceDTO
     * @return 设备列表中返回设备的ID、名称、模型ID、状态值和告警信息
     */
    @Select("<script> select dev.doid doId,dev.device_name deviceName,dev.model_id modelId,dev.type deviceType,dev.type_name deviceTypeName,dev.class deviceClass, " +
            "    dev.brand,dev.size,dev.replacement_cycle replacementCycle,dev.factory_name factoryName " +
            "  from device dev " +
            " <where><if test='deviceType !=null and \"\" != deviceType'> dev.type=#{deviceType}</if>" +
            "  and dev.model_id is not null " +
            " </where> " +
            " </script>")
    List<DeviceDetail> findDeviceDetailListByType(DeviceDTO deviceDTO);

    /**
     * 根据设备ID查询设备名称
     * @param id
     * @return
     */
    @Select("select device_name from device where doid=#{id}")
    String findDeviceNameById(@Param("id") String id);

    /***
     * 根据设备ID查看是否存在
     * @param id
     * @return
     */
    @Select("select count(1) from device where doid=#{id}")
    Integer findDeviceCountById(@Param("id") String id);

    /***
     * 根据模型ID查看是否存在
     * @param modelId
     * @return
     */
    @Select("select count(1) from device where model_id=#{modelId}")
    Integer findDeviceCountByModelId(@Param("modelId") String modelId);

    /**
     * 根据模型ID获取设备基本信息
     * @param modelId
     * @return
     */
    @Select(" select doid doId,device_name deviceName,model_id modelId,type deviceType,type_name deviceTypeName,class deviceClass, " +
            "    brand,size,replacement_cycle replacementCycle,factory_name factoryName from device "+
            " where model_id=#{modelId} ")
    DeviceInfo findDeviceInfoByModelId(@Param("modelId") String modelId);

    /***
     * 根据设备ID绑定模型ID
     * @param id
     * @param modelId
     * @return
     */
    @Update("update device set model_id =#{modelId} where doid=#{id}")
    Integer updateDeviceModelId(@Param("id") String id,@Param("modelId") String modelId);

    /***
     * 批量插入设备
     * @param deviceInfoList
     * @return
     */
    @Insert("<script>insert into device(doid, device_name, type, type_name,factory_name, gmt_create, gmt_modify)values " +
            " <foreach item=\"item\" collection=\"list\" separator=\",\"> " +
            "   (#{item.doId}, #{item.deviceName}, #{item.deviceType}, #{item.deviceTypeName},'中移物联',now(),now()) " +
            " </foreach> "+
            "</script>")
    Integer insertBatchDevice(@Param("list")List<DeviceInfo> deviceInfoList);

    /***
     * 批量修改设备名称和设备类型
     * @param deviceInfoList
     * @return
     */
    @Update("<script><foreach collection=\"list\" item=\"item\" separator=\";\">" +
            "   update device set device_name=#{item.deviceName},type=#{item.deviceType}, type_name=#{item.deviceTypeName},gmt_modify=now() where doid=#{item.doId} " +
            "</foreach>" +
            "</script>")
    Integer updateBatchDeviceById(@Param("list") List<DeviceInfo> deviceInfoList);

}
