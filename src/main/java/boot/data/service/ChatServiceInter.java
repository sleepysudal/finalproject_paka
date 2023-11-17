package boot.data.service;

import java.util.List;
import java.util.Map;

import boot.data.Dto.ChatListDTO;
import boot.data.Dto.ChatRoomDto;

public interface ChatServiceInter {
	
	public List<ChatListDTO> getChatList(String mem_id);

	public void insertRoomInfo(Map<String, String> map);

	public ChatRoomDto checkChatId(Map<String, String> chatId);

	public void setLastMessage(Map<String, String> map);

}
