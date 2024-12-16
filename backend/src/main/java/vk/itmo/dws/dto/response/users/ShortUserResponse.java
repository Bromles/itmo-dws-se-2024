package vk.itmo.dws.dto.response.users;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.entity.User;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ShortUserResponse {
    private String username;

    public ShortUserResponse(User user) {
        this.username = user.getUsername();
    }
}
