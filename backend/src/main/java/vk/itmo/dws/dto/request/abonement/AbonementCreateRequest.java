
package vk.itmo.dws.dto.request.abonement;

import com.fasterxml.jackson.annotation.JsonAlias;
import com.fasterxml.jackson.annotation.JsonProperty;
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
    @JsonProperty("section_id")
    private Long sectionId;
    private Double price;


}
