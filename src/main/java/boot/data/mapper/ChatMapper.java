package boot.data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import boot.data.Dto.ChatListDTO;
import boot.data.Dto.ChatRoomDto;

@Mapper
public interface ChatMapper {
	
	public List<ChatListDTO> getChatList(String mem_id);
	
	public void insertRoomInfo(Map<String, String> map);

	public ChatRoomDto checkChatId(Map<String, String> chatId);

	public void setLastMessage(Map<String, String> map);

}
