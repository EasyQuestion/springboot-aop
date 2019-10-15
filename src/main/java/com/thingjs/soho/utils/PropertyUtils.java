package com.thingjs.soho.utils;

import java.util.ResourceBundle;

/**
 * @author: liujiangbo
 * @description: 配置文件工具类
 * @date: 2019/3/19 11:50
 */
public class PropertyUtils {

    /**
     * 获取配置文件中配置信息
     *
     * @param fileName
     * @param key
     * @return
     */
    public static String getProperty(String fileName, String key) {
        ResourceBundle rb = ResourceBundle.getBundle(fileName);
        return rb.getString(key);
    }

}
