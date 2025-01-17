package vk.itmo.dws.dto.response.classificatons;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Classification;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClassificationsResponse extends ClassificationsShortResponse{
    private List<OptionResponse> options;



    public ClassificationsResponse(Classification classification) {
       super(classification);
        this.options = classification.getOptions().stream().map(OptionResponse::new).toList();
    }
}
