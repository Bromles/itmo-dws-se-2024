package vk.itmo.dws.dto.response.users;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Booking;
import vk.itmo.dws.entity.User;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class UserResponse {
    protected String id;
    private String username;

    public UserResponse(User user) {
        this.id = String.valueOf(user.getId());
        this.username = user.getUsername();
    }
}
