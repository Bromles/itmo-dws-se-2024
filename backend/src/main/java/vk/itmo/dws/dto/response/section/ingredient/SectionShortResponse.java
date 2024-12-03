package vk.itmo.dws.dto.response.section.ingredient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Section;

import java.time.LocalDate;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SectionShortResponse {
    protected Long id;
    protected String title;
    protected List<ClassResponse> classes;
    protected String description;

    public SectionShortResponse(Section section){
        this.id = section.getId();
        this.title = section.getTitle();
        this.classes = section.getClasses().stream().map(ClassResponse::new).toList();
        this.description = section.getDescription();
    }
}
