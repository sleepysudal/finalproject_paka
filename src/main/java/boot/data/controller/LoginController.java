package boot.data.controller;

import java.util.HashMap;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import boot.data.Dto.LoginDto;
import boot.data.service.LoginService;

@Controller
public class LoginController {
	
	@Autowired
	LoginService service;
	
	//로그인폼으로
	@GetMapping("/loginform")
	public String loginform()
	{
		return "/2/login/loginform";
	}
	//회원가입폼으로
	@GetMapping("/joinform")
	public String joinform()
	{
		return "/2/login/joinform";
	}
	
	//회원가입
	@PostMapping("/join")
	public String join(@ModelAttribute LoginDto login,
			HttpSession session,
			Model model)
	{
		model.addAttribute("login",login);
		service.insertMember(login);
		
		return "/2/login/gaipsuccess";
	}
	
		//로그인시 메인화면 이동
		@GetMapping("/main")
		public String loginform(HttpSession session, Model model)
		{	
			//폼의 아이디 얻기
			String u_id=(String)session.getAttribute("u_id");
			
			//로그인 상태인지 아닌지 체크
			String loginok = (String)session.getAttribute("loginok");
			
			//학번도 실행안하면 null
			if(loginok==null)
				return "/2/login/loginform";
			else {
				//로그인중이면 request에 name 저장
				String u_name = service.getName(u_id);
				model.addAttribute("u_name", u_name);
				
				return "/";
			}
			
			
		}
		
		@PostMapping("/login")
		public String loginproc(@RequestParam String u_id,
				@RequestParam String u_pass,
				HttpSession session)
		{
			HashMap<String, String> map = new HashMap<>();
			int check = service.loginPassCheck(u_id, u_pass);
			
			if(check==1) {
				session.setMaxInactiveInterval(60*60*1); //1시간
				session.setAttribute("myid", u_id);
				session.setAttribute("loginok", "yes");
				
				LoginDto login = service.getDataById(u_id);
				session.setAttribute("myname", login.getU_name());
				
				return "redirect:main";
			}else {
				return "/3/login/passfail";
			}
		
		}
		
		@GetMapping("/logoutprocess")
		public String logout(HttpSession session)
		{
			session.removeAttribute("loginok");
			
			return "redirect:main";
		}
	
	
	
}
