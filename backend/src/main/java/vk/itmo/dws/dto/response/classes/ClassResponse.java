package vk.itmo.dws.dto.response.classes;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Class;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ClassResponse {
    protected Long id;
    protected String title;
    protected SectionShortResponse section;

    public ClassResponse(Class aClass) {
        this.id = aClass.getId();
        this.title = aClass.getTitle();
        this.section = new SectionShortResponse(aClass.getSection());
    }
}
