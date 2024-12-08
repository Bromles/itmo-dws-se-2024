package vk.itmo.dws.dto.payment;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import jakarta.validation.constraints.Pattern;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Getter;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Getter
@JsonIgnoreProperties(ignoreUnknown = true)
@AllArgsConstructor
public class MerchantCreateRequestDto {

    @Schema(example = "Ivan")
    @Pattern(regexp = "^[a-zA-Zа-яА-Я]{2,50}$",
            message = "Name invalid")
    private String name;
    @Schema(example = "Ivanov")
    @Pattern(regexp = "^[a-zA-Zа-яА-Я]{2,50}$",
            message = "Surname invalid")
    private String surname;
    @Schema(example = "Yegorovich")
    @Pattern(regexp = "^[a-zA-Zа-яА-Я]{2,50}$",
            message = "Patronymic invalid")
    private String patronymic;
    @Schema(example = "124267492803")
    @Pattern(regexp = "^\\d+$",
            message = "INN invalid")
    @Size(min = 12, max = 12)
    private String INN;
    @Schema(example = "124267492")
    @Pattern(regexp = "^\\d+$",
            message = "INN invalid")
    @Size(min = 9, max = 9)
    private String KPP;
    @Schema(example = "TINKOFF")
    @Pattern(regexp = "^[a-zA-Zа-яА-Я]{2,20}$")
    private String bank;
    @Schema(example = "124267492")
    @Pattern(regexp = "^\\d+$",
            message = "INN invalid")
    @Size(min = 9, max = 9)
    private String BIK;

}
