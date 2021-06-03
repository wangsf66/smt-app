package com.smt.app.base.filter.param.parse;

import org.springframework.boot.web.servlet.FilterRegistrationBean;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
@Configuration
public class WebConfig {
	
	@Bean
	public FilterRegistrationBean<ParamParserFilter> paramsFilter(){
		FilterRegistrationBean<ParamParserFilter> registration = new FilterRegistrationBean<ParamParserFilter>();
		registration.setFilter(new ParamParserFilter());
		registration.setName("ParamParserFilter");
		registration.addUrlPatterns("/*");
		registration.setOrder(10);
		return registration;
	}
	
}
