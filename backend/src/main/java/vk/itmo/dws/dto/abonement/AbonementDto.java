package vk.itmo.dws.dto.abonement;

import com.fasterxml.jackson.annotation.JsonIgnoreProperties;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.AllArgsConstructor;
import lombok.Getter;

import java.math.BigDecimal;
import java.time.LocalDateTime;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Getter
@JsonIgnoreProperties(ignoreUnknown = true)
@AllArgsConstructor
public class AbonementDto {

    @Schema(example = "1")
    private Long id;
    @Schema(example = "54564564")
    private Long userId;
    @Schema(example = "Monthly Subscription")
    private String title;
    @Schema(example = "30")
    private Integer duration;
    @Schema(example = "2")
    private Long sectionId;
    @Schema(example = "2024-10-11 12:35:00")
    private LocalDateTime activationDate;
    @Schema(example = "5000.00")
    private BigDecimal price;

}