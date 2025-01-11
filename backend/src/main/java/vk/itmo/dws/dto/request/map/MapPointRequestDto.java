package vk.itmo.dws.dto.request.map;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Pattern;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
public class MapPointRequestDto {

    @NotNull(message = "X coordinate can`t be null")
    private double xCoordinate;
    @NotNull(message = "Y coordinate can`t be null")
    private double yCoordinate;

    @Pattern(regexp = "^[a-zA-Zа-яА-Я\\s_-]{3,100}+$", message = "Invalid popup message")
    private String popupMessage;
    @Pattern(regexp = "^[a-zA-Zа-яА-Я\\s_-]{3,100}+$", message = "Invalid marker name")
    private String markerName;

    @JsonCreator
    public MapPointRequestDto(double xCoordinate, double yCoordinate, String popupMessage, String markerName) {
        this.xCoordinate = xCoordinate;
        this.yCoordinate = yCoordinate;
        this.popupMessage = popupMessage;
        this.markerName = markerName;
    }

    public MapPointRequestDto() {
    }
}
