package boot.data.Dto;

import java.util.Date;

import org.apache.ibatis.type.Alias;

import com.fasterxml.jackson.annotation.JsonFormat;

import lombok.Data;

@Data
@Alias("chatList")
public class ChatListDTO {
	
	private String mem_id;
	private int chat_seq;
	private String other_store_nickname;
	private String other_store_img;
	private String last_message;
	@JsonFormat(shape=JsonFormat.Shape.STRING, pattern="yyyy.MM.dd")
	private Date chat_logtime;

}
