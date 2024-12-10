
package vk.itmo.dws.dto.request.abonement;

import jakarta.annotation.Nullable;
import lombok.Data;

import java.time.Period;

@Data
public class AbonementCreateRequest {

    protected String title;
    @Nullable
    private Period duration;
    @Nullable
    private Long classesCount;
    private Long sectionId;
    private Double price;


}
