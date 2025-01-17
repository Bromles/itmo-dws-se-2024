package vk.itmo.dws.dto.response.classificatons;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Classification;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClassificationsShortResponse {
    protected Long id;
    protected String name;
    protected List<ClassificationsShortResponse> children;
    protected List<SectionShortResponse> sections;
   // protected List<ClassificationsResponse> options;

    public ClassificationsShortResponse(Classification classification) {
        this.id = classification.getId();
        this.name = classification.getName();
        this.children = classification.getChildren().stream().map(ClassificationsShortResponse::new).toList();
        this.sections = classification.getSections().stream().map(SectionShortResponse::new).toList();
    }
}
