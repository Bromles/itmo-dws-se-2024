package vk.itmo.dws.dto.account;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.Setter;
import vk.itmo.dws.entity.User;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Getter
@Setter
@JsonIgnoreProperties(ignoreUnknown = true)
@AllArgsConstructor
public class UserResponseDto {

    @Schema(example = "a46fd0bb-f4de-463c-b198-783d1af7647a")
    private String id;
    @Schema(example = "User321@mail.ru")
    private String email;
    @Schema(example = "true")
    private boolean emailVerified;
    @Schema(example = "2342342543")
    private long createdTimestamp;
    @Schema(example = "true")
    private boolean enabled;
    @Schema(example = "false")
    private boolean totp;

//    public UserResponseDto(User user) {
//        this.id = String.valueOf(user.getId());
//        this.email = user.getEmail();
//        this.emailVerified = user.isEmailVerified();
//        this.createdTimestamp = user.getCreatedTimestamp();
//        this.enabled = user.isEnabled();
//        this.totp = user.isTotp();
//    }

}
