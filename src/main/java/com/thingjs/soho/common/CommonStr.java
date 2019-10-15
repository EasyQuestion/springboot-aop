package com.thingjs.soho.common;

import java.util.HashMap;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;

/**
 * @author muminghui
 * @date 2019/8/1 13:46
 */
public class CommonStr {
    /**离线*/
    public static final String ONLINE_ERROR = "0";
    /**正在充电*/
    public static final String POWERSTATE_ERROR = "1";
    /**告警状态*/
    public static final String STATE_ERROR = "1";
    /**正常状态*/
    public static final String STATE_CORRECT = "0";

    public static final Set<String> errorStateMap = new HashSet<>();
    public static final Set<String> correctStateMap = new HashSet<>();

    static {
        errorStateMap.add("000");
        errorStateMap.add("010");
        errorStateMap.add("020");
        errorStateMap.add("030");
        errorStateMap.add("100");
        errorStateMap.add("130");

        correctStateMap.add("001");
        correctStateMap.add("011");
        correctStateMap.add("021");
        correctStateMap.add("031");
        correctStateMap.add("101");
        correctStateMap.add("131");
    }
}
