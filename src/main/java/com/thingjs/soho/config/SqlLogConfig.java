package com.thingjs.soho.config;

import lombok.extern.slf4j.Slf4j;
import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;
import org.apache.ibatis.annotations.Update;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;

import java.lang.reflect.Method;

/**
 * @author muminghui
 * @date 2019/9/24 15:57
 */
@Slf4j
//@Aspect
//@Component
public class SqlLogConfig {

    @Pointcut("@annotation(org.apache.ibatis.annotations.Insert)")
    public void insertLog() {

    }

    @Pointcut("@annotation(org.apache.ibatis.annotations.Select)")
    public void selectLog() {

    }

    @Pointcut("@annotation(org.apache.ibatis.annotations.Update)")
    public void updateLog() {

    }

    @Pointcut("@annotation(org.apache.ibatis.annotations.Delete)")
    public void deleteLog() {

    }

    @After("insertLog()")
    public void insertAfter(JoinPoint joinPoint) throws Exception {
        // 接口执行结束后换行,方便分隔查看
        log.info("`````````````````````" +getAspectLogDescription(joinPoint,"Insert"));
    }

    @After("selectLog()")
    public void selectAfter(JoinPoint joinPoint) throws Exception {
        // 接口执行结束后换行,方便分隔查看
        log.info("`````````````````````" +getAspectLogDescription(joinPoint,"Select"));
    }

    @After("updateLog()")
    public void updateAfter(JoinPoint joinPoint) throws Exception {
        // 接口执行结束后换行,方便分隔查看
        log.info("`````````````````````" +getAspectLogDescription(joinPoint,"Update"));
    }

    @After("deleteLog()")
    public void deleteAfter(JoinPoint joinPoint) throws Exception {
        // 接口执行结束后换行,方便分隔查看
        log.info("`````````````````````" +getAspectLogDescription(joinPoint,"Delete"));
    }

    private String getAspectLogDescription(JoinPoint joinPoint, String type) throws Exception {
        String targetName = joinPoint.getTarget().getClass().getName();
        String methodName = joinPoint.getSignature().getName();
        Object[] arguments = joinPoint.getArgs();
        Class targetClass = Class.forName(targetName);
        Method[] methods = targetClass.getMethods();
        StringBuilder description = new StringBuilder("");
        for (Method method : methods) {
            if (method.getName().equals(methodName)) {
                Class[] clazzs = method.getParameterTypes();
                if (clazzs.length == arguments.length) {
//                    description.append(method.getAnnotation(Select.class).value());
                    if("Select".equals(type)) {
                        description.append(joinPoint.getSignature().getDeclaringType().getMethod(methodName, clazzs).getAnnotation(Select.class).value()[0]);
                    }else if("Insert".equals(type)) {
                        description.append(joinPoint.getSignature().getDeclaringType().getMethod(methodName, clazzs).getAnnotation(Insert.class).value()[0]);
                    }else if("Update".equals(type)) {
                        description.append(joinPoint.getSignature().getDeclaringType().getMethod(methodName, clazzs).getAnnotation(Update.class).value()[0]);
                    }else if("Delete".equals(type)) {
                        description.append(joinPoint.getSignature().getDeclaringType().getMethod(methodName, clazzs).getAnnotation(Delete.class).value()[0]);
                    }
                    break;
                }
            }
        }
        return description.toString();
    }
}
