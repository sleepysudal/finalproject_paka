package boot.data.service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.stereotype.Component;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;

import com.fasterxml.jackson.databind.ObjectMapper;

@Component
public class HandlerChat extends TextWebSocketHandler {
	//(<"chat_seq", 방ID>, <"session", 세션>) - (<"chat_seq", 방ID>, <"session", 세션>) - (<"chat_seq", 방ID>, <"session", 세션>) 형태 
	private List<Map<String, Object>> sessionList = new ArrayList<Map<String, Object>>();
	String my_store_nickname;
	String my_mem_id;
	
	//클라이언트가 서버로 메세지 전송 처리
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		super.handleTextMessage(session, message);
		
		//세션 데이터 저장 - handShaker
		Map<String,Object> sessionMap = session.getAttributes();
		my_store_nickname = (String)sessionMap.get("my_store_nickname");
		my_mem_id = session.getPrincipal().getName();
		
		//JSON --> Map으로 변환 (GSON 사용 안할 시)
		ObjectMapper objectMapper = new ObjectMapper();
		Map<String, String> mapReceive = objectMapper.readValue(message.getPayload(), Map.class);

		switch (mapReceive.get("cmd")) {

		//클라이언트 입장
		case "CMD_ENTER":
			//세션 리스트에 저장
			Map<String, Object> map = new HashMap<String, Object>();
			map.put("chat_seq", mapReceive.get("chat_seq"));
			map.put("session", session);
			sessionList.add(map); //클라이언트의 세션 저장
			
			//같은 채팅방에 입장 신호 전송
			for (int i = 0; i < sessionList.size(); i++) {
				Map<String, Object> mapSessionList = sessionList.get(i);
				String chat_seq = (String) mapSessionList.get("chat_seq");
				WebSocketSession sess = (WebSocketSession) mapSessionList.get("session");
				
				if(chat_seq.equals(mapReceive.get("chat_seq"))) {
					Map<String, String> mapToSend = new HashMap<String, String>();
					mapToSend.put("chat_seq", chat_seq);
					mapToSend.put("cmd", "CMD_ENTER");
					//mapToSend.put("msg", my_store_nickname + "님이 입장하셨습니다.");
					mapToSend.put("checkId", my_mem_id);
					mapToSend.put("current_user_num", sessionList.size()+"");
					
					String jsonStr = objectMapper.writeValueAsString(mapToSend);
					sess.sendMessage(new TextMessage(jsonStr)); //메시지 전송
				}
			}
			break;
			
		//클라이언트 메세지
		case "CMD_MSG_SEND":
			//같은 채팅방에 메세지 전송
			for (int i = 0; i < sessionList.size(); i++) {
				Map<String, Object> mapSessionList = sessionList.get(i);
				String chat_seq = (String) mapSessionList.get("chat_seq");
				WebSocketSession sess = (WebSocketSession) mapSessionList.get("session");
				
				if (chat_seq.equals(mapReceive.get("chat_seq"))) {
					Map<String, String> mapToSend = new HashMap<String, String>();
					mapToSend.put("chat_seq", chat_seq);
					mapToSend.put("cmd", "CMD_MSG_SEND");
					mapToSend.put("msg", mapReceive.get("msg"));
					mapToSend.put("checkId", my_mem_id);

					String jsonStr = objectMapper.writeValueAsString(mapToSend);
					sess.sendMessage(new TextMessage(jsonStr));
				}
			}
			break;
		}//switch
	}

	//클라이언트 퇴장
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		super.afterConnectionClosed(session, status);
        
		ObjectMapper objectMapper = new ObjectMapper();
		String now_chat_seq = "";
		
		//사용자 세션을 리스트에서 제거
		for (int i = 0; i < sessionList.size(); i++) {
			Map<String, Object> map = sessionList.get(i);
			String chat_seq = (String)map.get("chat_seq");
			WebSocketSession sess = (WebSocketSession)map.get("session");
			
			if(session.equals(sess)) {
				now_chat_seq = chat_seq;
				sessionList.remove(map); //클라이언트의 세션 제거
				break;
			}	
		}
		
		//같은 채팅방에 퇴장 신호 전송 
		for (int i = 0; i < sessionList.size(); i++) {
			Map<String, Object> mapSessionList = sessionList.get(i);
			String chat_seq = (String)mapSessionList.get("chat_seq");
			WebSocketSession sess = (WebSocketSession)mapSessionList.get("session");

			if (chat_seq.equals(now_chat_seq)) {
				Map<String, String> mapToSend = new HashMap<String, String>();
				mapToSend.put("chat_seq", chat_seq);
				mapToSend.put("cmd", "CMD_EXIT");

				String jsonStr = objectMapper.writeValueAsString(mapToSend);
				sess.sendMessage(new TextMessage(jsonStr));
			}
		}
	}
}

