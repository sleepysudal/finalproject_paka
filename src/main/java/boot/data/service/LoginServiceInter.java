package boot.data.service;

import java.util.List;

import boot.data.Dto.LoginDto;

public interface LoginServiceInter {
	public void insertMember(LoginDto login);
	public List<LoginDto>getAllMembers();
	public int getSerchId(String u_id); //아이디 존재 여부
	public String getName(String u_id);
	public int loginPassCheck(String u_id, String u_pass);
	public LoginDto getDataById(String u_id);
}
