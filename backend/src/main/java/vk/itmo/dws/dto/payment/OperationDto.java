package vk.itmo.dws.dto.payment;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.time.LocalDateTime;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Getter
@JsonIgnoreProperties(ignoreUnknown = true)
@AllArgsConstructor
public class OperationDto {

    @Schema(example = "54564564")
    private String paymentId;
    @Schema(example = "BANK CARD")
    private String type;
    @Schema(example = "500_000")
    private Long amountKop;
    @Schema(example = "2024-10-11 12:35:00")
    private LocalDateTime date;

}
