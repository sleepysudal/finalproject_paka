package boot.data.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Mapper;

import boot.data.Dto.LoginDto;

@Mapper
public interface LoginMapperInter {
	
	public void insertMember(LoginDto login);

	public List<LoginDto> getAllMembers();

	public int getSerchId(String u_id); 

	public String getName(String u_id);

	public int loginPassCheck(Map<String, String> map);

	public LoginDto getDataById(String u_id);
}
