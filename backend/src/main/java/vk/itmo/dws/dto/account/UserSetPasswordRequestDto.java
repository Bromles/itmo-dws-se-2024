package vk.itmo.dws.dto.account;


import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Pattern;
import lombok.AllArgsConstructor;
import lombok.Getter;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Getter
@JsonIgnoreProperties(ignoreUnknown = true)
@AllArgsConstructor
public class UserSetPasswordRequestDto {

    @Pattern(regexp = "^(?=.*\\d)(?=.*[A-Z])[a-zA-Z\\d]{8,20}$",
            message = "Password invalid")
    @Schema(example = "aasd43543534dsfD")
    private final String password;

    @Pattern(regexp = "^(?=.*\\d)(?=.*[A-Z])[a-zA-Z\\d]{8,20}$",
            message = "aasd43543534dsfD")
    private final String passwordConfirmation;

}
