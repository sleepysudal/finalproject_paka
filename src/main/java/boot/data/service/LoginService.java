package boot.data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import boot.data.Dto.LoginDto;
import boot.data.mapper.LoginMapperInter;

@Service
public class LoginService implements LoginServiceInter {

	@Autowired
	LoginMapperInter loginInter;
	
	@Override
	public void insertMember(LoginDto login) {
		// TODO Auto-generated method stub
		loginInter.insertMember(login);

	}

	@Override
	public List<LoginDto> getAllMembers() {
		// TODO Auto-generated method stub
		return loginInter.getAllMembers();
	}

	@Override
	public int getSerchId(String u_id) {
		// TODO Auto-generated method stub
		return loginInter.getSerchId(u_id);
	}

	@Override
	public String getName(String u_id) {
		// TODO Auto-generated method stub
		return loginInter.getName(u_id);
	}

	@Override
	public int loginPassCheck(String u_id, String u_pass) {
		// TODO Auto-generated method stub
		Map<String,String>map = new HashMap<>();
		map.put("u_id", u_id);
		map.put("u_pass", u_pass);
		return loginInter.loginPassCheck(map);
	}

	@Override
	public LoginDto getDataById(String u_id) {
		// TODO Auto-generated method stub
		return loginInter.getDataById(u_id);
	}

}
