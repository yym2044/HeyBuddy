package com.owl.heybuddy.config;
//  sockjs 사용법, websocket 쓸때와 다르게 config 파일 필요한 듯
import org.springframework.context.annotation.Configuration;
import org.springframework.web.socket.config.annotation.EnableWebSocket;
import org.springframework.web.socket.config.annotation.WebSocketConfigurer;
import org.springframework.web.socket.config.annotation.WebSocketHandlerRegistry;

import com.owl.heybuddy.handler.EchoHandlerTest;

@Configuration
@EnableWebSocket // 웹소켓에 대해 대부분 자동설정을 한다.
public class WebSocketConfigTest implements WebSocketConfigurer {
    // WebSocketConfigurer를 구현하여 추가적인 설정을 한다.

    // WebSocketHandler를 추가한다.
    // 1. 클라이언트가 접속을 했을 때 특정 메소드가 호출
    // 2. 클라이언트가 접속을 close했을 때 특정 메소드가 호출
    // 3. 클라이언트가 메시지를 보냈을 때 특정 메소드 호출
    @Override
    public void registerWebSocketHandlers(WebSocketHandlerRegistry webSocketHandlerRegistry) {
        webSocketHandlerRegistry.addHandler(new EchoHandlerTest(), "/wsTest");
//        webSocketHandlerRegistry.addHandler(new EchoHandler(), "/ws").withSockJS();
    }
}
