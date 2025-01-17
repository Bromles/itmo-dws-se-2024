package vk.itmo.dws.dto.calendar;

import com.fasterxml.jackson.databind.PropertyNamingStrategies;
import com.fasterxml.jackson.databind.annotation.JsonNaming;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.io.Serializable;
import java.time.LocalDateTime;

/**
 * DTO for {@link vk.itmo.dws.entity.CalendarRecord}
 * Внутренняя dto по идее
 */
@Data
@NoArgsConstructor
@AllArgsConstructor
@JsonNaming(PropertyNamingStrategies.SnakeCaseStrategy.class)
public class CalendarRecordDto implements Serializable {
    private String title;
    private LocalDateTime startTime;
    private LocalDateTime endTime;
}