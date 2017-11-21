package com.Stream.utils;

import javax.annotation.Resource;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurerAdapter;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import com.Stream.interceptor.HandShake;
/**
 * WebScoket配置处理器
 * @author WQY
 * @Date 2017年11月20日 下午1:15:09
 */
@Configuration//指明这是一个配置类
@EnableWebSocket
public class WebSocketConfig extends WebMvcConfigurerAdapter implements WebSocketConfigurer {
@Resource
MyWebSocketHandler handler;
public void registerWebSocketHandlers(WebSocketHandlerRegistry registry) {
	registry.addHandler(handler, "/ws.do").addInterceptors(new HandShake()).setAllowedOrigins("http://localhost:8080");
	registry.addHandler(handler, "/ws/sockjs").addInterceptors(new HandShake()).withSockJS();
}
@Bean
public WebSocketHandler myHandler() {
   return new MyWebSocketHandler();
}
}
