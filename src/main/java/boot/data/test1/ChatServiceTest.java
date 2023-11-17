package boot.data.test1;

import java.util.ArrayList;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.PostConstruct;

import org.springframework.stereotype.Service;

import com.fasterxml.jackson.databind.ObjectMapper;

import lombok.RequiredArgsConstructor;
import lombok.extern.slf4j.Slf4j;

@Slf4j
@RequiredArgsConstructor
@Service
public class ChatServiceTest {

    private final ObjectMapper objectMapper;
    private Map<String, ChatRoomTest> chatRooms;

    @PostConstruct
    private void init() {
        chatRooms = new LinkedHashMap<>();
    }

    public List<ChatRoomTest> findAllRoom() {
        return new ArrayList<>(chatRooms.values());
    }

    public ChatRoomTest findRoomById(String roomId) {
        return chatRooms.get(roomId);
    }

    public ChatRoomTest createRoom(String name) {
        String randomId = UUID.randomUUID().toString();
        ChatRoomTest chatRoom = ChatRoomTest.builder()
                .roomId(randomId)
                .name(name)
                .build();
        chatRooms.put(randomId, chatRoom);
        return chatRoom;
    }
}
