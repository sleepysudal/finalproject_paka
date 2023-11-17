package boot.data.Dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("chatRoom")
public class ChatRoomDto {
	
	private int chat_seq;
	private String one_mem_id;
	private String two_mem_id;
	private String one_store_nickname;
	private String two_store_nickname;
	private String one_store_img;
	private String two_store_img;
	private Date chat_logtime;

}
