package com.thingjs.soho.config;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import lombok.extern.slf4j.Slf4j;
import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.aspectj.lang.annotation.Pointcut;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Arrays;
import java.util.Enumeration;
import java.util.Map;

/**
 * 对所有的web请求做切面来记录日志
 * @author mumh@2423528736@qq.com
 * @date 2019/10/15 9:52
 */
@Slf4j
@Component
@Aspect
public class WebLogAspect {

    /**
     * 定义切入点，切入点为com.thingjs.soho.device.controller下的所有函数
     */
    @Pointcut("execution(public * com.thingjs.soho.device.controller..*.*(..))")
    public void webLog(){}

    /**
     * AOP支持的通知
     *      前置通知@Before：在某连接点之前执行的通知，除非抛出一个异常，否则这个通知不能阻止连接点之前的执行流程
     *          注意：
     *              通过JoinPoint可以获得通知的签名信息，如目标方法名、目标方法参数信息等
     *              通过RequestContextHolder来获取请求信息，Session信息
     *      后置通知@AfterReturning：在某连接点之后执行的通知，通常在一个匹配的方法返回的时候执行（可以在后置通知中绑定返回值）
     *          注意:
     *              如果参数中的第一个参数为JoinPoint，则第二个参数为返回值的信息
     *              如果参数中的第一个参数不为JoinPoint，则第一个参数为returning中对应的参数
     *               returning：限定了只有目标方法返回值与通知方法相应参数类型时才能执行后置返回通知，否则不执行
     *               对于returning对应的通知方法参数为Object类型将匹配任何目标返回值
     * */

    @Before(value = "webLog()")
    public void before(JoinPoint joinPoint){
        log.info("前置通知");
        //获取目标方法的参数信息
        log.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
        //AOP代理类的信息
        Object proxy = joinPoint.getThis();
        //代理的目标对象
        Object target = joinPoint.getTarget();
        //用的最多 通知的签名
        Signature signature = joinPoint.getSignature();
        log.info("代理的哪个方法："+signature.getName());
        log.info("代理的类全名："+signature.getDeclaringTypeName());
        //目标类
        Class clazz = signature.getDeclaringType();
        log.info(clazz.getName());

        //获取RequestAttributes
        RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
        //从获取RequestAttributes中获取HttpServletRequest的信息
        HttpServletRequest request = (HttpServletRequest)requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
        //获取请求参数
        Enumeration<String> enumeration = request.getParameterNames();
        Map<String,String> paramMap = Maps.newHashMap();
        while(enumeration.hasMoreElements()){
            String parameter = enumeration.nextElement();
            paramMap.put(parameter,request.getParameter(parameter));
        }
        String str = JSON.toJSONString(paramMap);
        log.info("请求的参数为："+str);

        str = JSON.toJSONString(request.getParameterMap());
        log.info("请求的参数_2为："+str);

        //获取Session信息
        HttpSession session = (HttpSession)requestAttributes.resolveReference(RequestAttributes.REFERENCE_SESSION);
    }

    @AfterReturning(value = "webLog()",returning = "keys")
    public void afterReturningAdvice1(JoinPoint joinPoint,Object keys){
        log.info("第一个后置返回通知返回的结果："+keys);
    }

    @AfterReturning(value = "webLog()",returning = "keys",argNames = "keys")
    public void afterReturningAdvice2(Object keys){
        log.info("第二个后置返回通知返回的结果："+keys);
    }
//    /**
//     * 前置通知：在连接点之前执行的通知
//     * @param joinPoint
//     * @throws Throwable
//     */
//    @Before("webLog()")
//    public void doBefore(JoinPoint joinPoint)throws Throwable{
//        //通过JoinPoint可以获得通知的签名信息，如目标方法名、目标方法参数信息等
//        //通过RequestContextHolder来获取请求信息，Session信息
//
//        // 接收到请求，记录请求内容
//        ServletRequestAttributes attributes = (ServletRequestAttributes) RequestContextHolder.getRequestAttributes();
//        HttpServletRequest request = attributes.getRequest();
//
//        // 记录下请求内容
//        log.info("URL : " + request.getRequestURL().toString());
//        log.info("HTTP_METHOD : " + request.getMethod());
//        log.info("IP : " + request.getRemoteAddr());
//        log.info("CLASS_METHOD : " + joinPoint.getSignature().getDeclaringTypeName() + "." + joinPoint.getSignature().getName());
//        log.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
//    }

//    @AfterReturning(returning = "obj",pointcut = "webLog()")
//    public void doAfterReturning(Object obj)throws Throwable{
//        // 处理完请求，返回内容
//        log.info("RESPONSE : " + obj);
//    }
}
