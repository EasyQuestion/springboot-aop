package com.thingjs.soho.utils;

import org.springframework.util.StringUtils;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

/**
 * @author muminghui
 * @date 2019/7/8 17:18
 */
public class MyDateUtil {

    /**
     * 获取昨天的年月日，例如20190708
     * @return
     */
    public static String getYesterdayStr(){
        Calendar cal=Calendar.getInstance();
        cal.add(Calendar.DATE,-1);
        Date date=cal.getTime();
        SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
        return sdf.format(date);
    }

    /**
     * 将Long类型的数据 转换成 yyyy-MM-dd HH:mm:ss 的格式
     * @param timeStr
     * @return
     */
    public static String parseDate(Long timeStr){
        if(timeStr==null || StringUtils.isEmpty(timeStr)){
            return null;
        }
        Date date = new Date(timeStr);
        SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        return sdf.format(date);
    }

}
