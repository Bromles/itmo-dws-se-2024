package vk.itmo.dws.dto.exception;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import io.swagger.v3.oas.annotations.media.Schema;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;

/**
 * Дто для простых ошибок
 */

@Getter
@Setter
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
public class SimpleExceptionResponseDto {

    @Schema(example = "5435345435")
    private String instant;
    @Schema(example = "/api/v1/...")
    private String path;
    @Schema(example = "BAD-REQUEST")
    private String error;
    @Schema(example = "400")
    private Integer status;
    @Schema(example = "Mismatch passwords")
    private String message;

    public SimpleExceptionResponseDto(String path, String error, Integer status, String message) {
        this.instant = String.valueOf(LocalDateTime.now());
        this.path = path;
        this.error = error;
        this.status = status;
        this.message = message;
    }

}
