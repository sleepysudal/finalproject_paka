package boot.data.test1;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ChatControllerTest {
	private final ChatServiceTest chatService;


    @GetMapping("/chat7")
    public String chatList(Model model){
        List<ChatRoomTest> roomList = chatService.findAllRoom();
        model.addAttribute("roomList",roomList);
        return "/chattest/chatList";
    }


    @PostMapping("/chattest/createRoom")  //방을 만들었으면 해당 방으로 가야지.
    public String createRoom(Model model, @RequestParam String name, String username) {
        ChatRoomTest room = chatService.createRoom(name);
        model.addAttribute("room",room);
        model.addAttribute("username",username);
        return "/chattest/chatRoom";  //만든사람이 채팅방 1빠로 들어가게 됩니다
    }

    @GetMapping("/chattest/chatRoom")
    public String chatRoom(Model model, @RequestParam String roomId){
        ChatRoomTest room = chatService.findRoomById(roomId);
        model.addAttribute("room",room);   //현재 방에 들어오기위해서 필요한데...... 접속자 수 등등은 실시간으로 보여줘야 돼서 여기서는 못함
        return "/chattest/chatRoom";
    }
}
