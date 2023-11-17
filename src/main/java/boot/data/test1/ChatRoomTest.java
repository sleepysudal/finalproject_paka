package boot.data.test1;

import java.util.HashSet;
import java.util.Set;

import org.springframework.web.socket.WebSocketSession;

import lombok.Builder;
import lombok.Getter;

@Getter
public class ChatRoomTest {
    private String roomId;
    private String name;
    private Set<WebSocketSession> sessions = new HashSet<>();
    
    @Builder
    public ChatRoomTest(String roomId, String name) {
        this.roomId = roomId;
        this.name = name;
    }
}
