package com.thingjs.soho.config;

import com.alibaba.fastjson.JSON;
import com.google.common.collect.Maps;
import lombok.extern.slf4j.Slf4j;
import org.aopalliance.intercept.Joinpoint;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.Signature;
import org.aspectj.lang.annotation.*;
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
     * 切入点表达式的格式：execution([可见性]返回类型[声明类型].方法名(参数)[异常])
     * 其中[]内的是可选的，其它的还支持通配符的使用：
     * 1) *：匹配所有字符
     * 2) ..：一般用于匹配多个包，多个参数
     * 3) +：表示类及其子类
     * 4)运算符有：&&,||,!
     *
     * execution：用于匹配子表达式
     * within：用于匹配连接点所在的Java类或者包
     * this：用于向通知方法中传入代理对象的引用
     * target：用于向通知方法中传入目标对象的引用
     * args：用于将参数传入到通知方法中
     * @within ：用于匹配在类一级使用了参数确定的注解的类，其所有方法都将被匹配
     * @target ：和@within的功能类似，但必须要指定注解接口的保留策略为RUNTIME
     * @args ：传入连接点的对象对应的Java类必须被@args指定的Annotation注解标注
     * @annotation ：匹配连接点被它参数指定的Annotation注解的方法
     * bean：通过受管Bean的名字来限定连接点所在的Bean。该关键词是Spring2.5新增的
     * */


    /**
     * 定义切入点，切入点为com.thingjs.soho.device.controller下的所有函数
     */
    @Pointcut("execution(public * com.thingjs.soho.device.controller..*.*(..))")
    public void webLog(){
        /**没执行*/
        log.info("=======================webLog()================================");
    }

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
     *      后置异常通知@AfterThrowing：在方法抛出异常退出前执行的通知
     *             对于throwing对应的通知方法参数为Throwable类型将匹配任何异常
     *      后置最终通知@After：当某连接点退出时执行的通知（不论是正常返回还是异常退出）
     *      环绕通知@Around：包围一个连接点的通知，如方法调用等。
     *          环绕通知使用一个代理ProceedingJoinPoint类型的对象来管理目标对象，所以此通知的第一个参数必须是ProceedingJoinPoint类型。
     *          在通知体内调用ProceedingJoinPoint的proceed()方法会导致后台的连接点方法执行。
     *          proceed()方法也可能会被调用并且传入一个Object[]对象，该数组中的值将被作为方法执行时的入参
     *
     *
     *    参数绑定args()：如@Before("execution(* findById*(..)) &&" + "args(id,..)")
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


           //execution(public * com.thingjs.soho.device.controller..*.*(..))
    @Before("execution(* findById*(..)) &&" + "args(id,..)")
    public void twiceAsOld1(Long id){
        System.err.println ("切面before执行了。。。。id==" + id);
    }

    @AfterReturning(value = "webLog()",returning = "keys")
    public void afterReturningAdvice1(JoinPoint joinPoint,Object keys){
        log.info("第一个后置返回通知返回的结果："+keys);
        //获取目标方法的参数信息
        log.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
    }

    @AfterReturning(value = "webLog()",returning = "keys",argNames = "keys")
    public void afterReturningAdvice2(Object keys){
        log.info("第二个后置返回通知返回的结果："+keys);
    }

    @AfterThrowing(value = "webLog()",throwing = "exception")
    public void afterThrowing(JoinPoint joinPoint,ArithmeticException exception){
        //获取目标方法的参数信息
        log.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
        log.info("发生了算法异常！！！");
    }

    @After("webLog()")
    public void doAfter(){
        log.info("后置最终通知执行完毕！！");
    }

    @Around("webLog()")
    public Object around(ProceedingJoinPoint joinPoint)throws Throwable{
        log.info("执行环绕通知的目标方法："+joinPoint.getSignature().getDeclaringTypeName()+"."+joinPoint.getSignature().getName());
        //获取目标方法的参数信息
        log.info("ARGS : " + Arrays.toString(joinPoint.getArgs()));
        try{
            Object obj = joinPoint.proceed();
            joinPoint.proceed();
            log.info("执行环绕通知完成！！");
            return obj;
        }catch (Throwable throwable){
            throw throwable;
        }
    }

//    @AfterThrowing(value = "webLog()",throwing = "exception")
//    public void afterThrowing(JoinPoint joinPoint,Throwable exception){
//        log.info("目标方法："+joinPoint.getSignature().getName());
//        if(exception instanceof NullPointerException){
//            log.info("发生了空指针异常！！！");
//        }
//        if(exception instanceof ArithmeticException){
//            log.info("发生了算法异常！！！");
//        }
//    }
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
