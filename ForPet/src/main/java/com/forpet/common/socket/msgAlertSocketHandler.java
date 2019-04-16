package com.forpet.common.socket;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.BinaryWebSocketHandler;

import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;
import com.forpet.model.vo.Member;
import com.forpet.model.vo.MemberFriend;

@Controller
public class msgAlertSocketHandler extends BinaryWebSocketHandler {
	
	private Logger logger = LoggerFactory.getLogger(msgAlertSocketHandler.class);
	private List<WebSocketSession> list = new ArrayList();
	private String loginNickname = "";
	
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {

		logger.debug("session id : " + session.getId());
		list.add(session);
		
		super.afterConnectionEstablished(session);
	}
	
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) {
		
		// message 값 변환
		String messageT = message.getPayload();
		Map<String,String> map = new HashMap();
		ObjectMapper mapper = new ObjectMapper();
		try {
			map = mapper.readValue(messageT,HashMap.class);
		}
		catch(IOException e) {
			e.printStackTrace();
		}
		
		// login user 불러오기
		Member loggedMember = (Member)session.getAttributes().get("loggedMember");
		
		// 받은 알림 위치 추적 변수
		String locFlag = map.get("locFlag");
		
		//쪽지 알림 메세지 보내기
		if(locFlag.equals("msgSend")) {

		}
		
		
		//map에 값을 받아서 msg박스로 보내기
		for(WebSocketSession s : list) {
			try {
				s.sendMessage(new TextMessage(mapper.writeValueAsString(map)));
			} catch (JsonProcessingException e) {
				e.printStackTrace();
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}

	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {

		logger.debug("close : " + session.getId());
		list.remove(session);
	}

}
