package boot.data.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import boot.data.test1.ChatRoomTest;
import boot.data.test1.ChatServiceTest;

@Controller
public class IndexController {
	
	//기본페이지 요청 메서드
	@GetMapping("/")
	public String index() {
		return "/layout/main"; //layout 폴더의 main.jsp를 찾아감
	}
	
	@GetMapping("/index2")
	public String index2() {
		return "/category/layout/main";
	}
	
	@GetMapping("/index3")
	public String index3() {
		return "/detail/layout/main";
	}
	
	@GetMapping("/loginform")
	public String loginform() {
		return "/index/login/main";
	}
	@GetMapping("/index3/chat")
	public String chat() {
        return "/chattest/chatList";
	}
	
}
