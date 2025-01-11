package vk.itmo.dws.dto.response.map;

import com.fasterxml.jackson.annotation.JsonCreator;
import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.*;
import vk.itmo.dws.dto.request.map.MapPointRequestDto;

@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
@Setter
@Getter
@NoArgsConstructor
public class MapPointResponseDto extends MapPointRequestDto {

    private Long id;

    public MapPointResponseDto(double xCoordinate, double yCoordinate, String popupMessage, String markerName, Long id) {
        super(xCoordinate, yCoordinate, popupMessage, markerName);
        this.id = id;
    }

}
