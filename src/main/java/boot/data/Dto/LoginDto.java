package boot.data.Dto;

import java.sql.Timestamp;

import org.apache.ibatis.type.Alias;

import lombok.Data;

@Data
@Alias("login")
public class LoginDto {
	
	private String u_id;
	private String u_name;
	private String u_email;
	private String u_pass;
	private Timestamp u_writerdate;
	private Timestamp u_final_logindate;
}
