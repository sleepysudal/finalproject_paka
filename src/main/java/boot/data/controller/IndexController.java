package boot.data.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class IndexController {
	
	@GetMapping("/")
	public String index() {
		return "/1/layout/main";
	}
	
	@GetMapping("/detail")
	public String index2() {
		return"/2/detail/detail";
	}
	
	@GetMapping("/search")
	public String index3() {
		return"/3/search2/search2";
	}
	
	@GetMapping("/admin")
	public String adminIndex() {
		return"/admin/layout-admin/admin_main";
	}
	
	
	
}
