package boot.data.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.Dto.ChatListDTO;
import boot.data.Dto.ChatRoomDto;
import boot.data.mapper.ChatMapper;

@Service
public class ChatService implements ChatServiceInter {
	
	@Autowired
	ChatMapper mapper;

	@Override
	public List<ChatListDTO> getChatList(String mem_id) {
		// TODO Auto-generated method stub
		return mapper.getChatList(mem_id);
	}

	@Override
	public void insertRoomInfo(Map<String, String> map) {
		// TODO Auto-generated method stub
		mapper.insertRoomInfo(map);
	}

	@Override
	public ChatRoomDto checkChatId(Map<String, String> chatId) {
		// TODO Auto-generated method stub
		return mapper.checkChatId(chatId);
	}

	@Override
	public void setLastMessage(Map<String, String> map) {
		// TODO Auto-generated method stub
		mapper.setLastMessage(map);
	}

}
