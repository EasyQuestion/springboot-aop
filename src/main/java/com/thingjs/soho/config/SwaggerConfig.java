package com.thingjs.soho.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import springfox.documentation.builders.ApiInfoBuilder;
import springfox.documentation.builders.ParameterBuilder;
import springfox.documentation.builders.PathSelectors;
import springfox.documentation.builders.RequestHandlerSelectors;
import springfox.documentation.schema.ModelRef;
import springfox.documentation.service.ApiInfo;
import springfox.documentation.service.Parameter;
import springfox.documentation.spi.DocumentationType;
import springfox.documentation.spring.web.plugins.Docket;
import springfox.documentation.swagger2.annotations.EnableSwagger2;

import java.util.ArrayList;
import java.util.List;

/**
 * @author: duyongfeng
 * @description: swagger配置
 * @date: 2019/5/15 17:12
 */
@Configuration
@EnableSwagger2
public class SwaggerConfig {
    @Bean
    public Docket createRestApi() {
        ParameterBuilder tokenPar = new ParameterBuilder();
        List<Parameter> pars = new ArrayList<Parameter>();
        tokenPar.name("Authorization")
                .description("令牌")
                .modelRef(new ModelRef("string"))
                .parameterType("header")
                .required(false)
                .build();
        pars.add(tokenPar.build());

        return new Docket(DocumentationType.SWAGGER_2)
                .apiInfo(apinInfo())
                .select()
                .apis(RequestHandlerSelectors.basePackage("com.thingjs.soho.device"))
                .paths(PathSelectors.regex("/api/.*"))
                .build().globalOperationParameters(pars);
    }

    private ApiInfo apinInfo() {
        return new ApiInfoBuilder()
                .title("望京SOHO服务端 APIs")
                .description("")
                .termsOfServiceUrl("http://thingjs.com")
                .contact("程序员 Yf.Du")
                .version("0.0.1")
                .build();
    }
}
