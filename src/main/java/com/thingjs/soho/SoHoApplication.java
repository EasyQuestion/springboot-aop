package com.thingjs.soho;

import lombok.extern.slf4j.Slf4j;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

/**
 * @author muminghui
 * @date 2019/6/28 14:06
 */
@Slf4j
@SpringBootApplication
public class SoHoApplication {

    public static void main(String[] args) {
        SpringApplication.run(SoHoApplication.class, args);
    }

}
