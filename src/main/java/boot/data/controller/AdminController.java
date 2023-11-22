package boot.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {
	
	@GetMapping("/notice")
	public String main() {
		return "/admin/admin/notice_listForm";
	}
	
	@GetMapping("/n_addaction")
	public String n_add() {
		return "/admin/admin/notice_addForm";
	}
}
