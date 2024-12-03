package vk.itmo.dws.dto.response.section;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.entity.Section;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SectionCardResponse extends SectionShortResponse{
    protected List<ClassResponse> classes;
    protected String description;

    public SectionCardResponse(Section section){
        super(section);
        this.classes = section.getClasses().stream().map(ClassResponse::new).toList();
        this.description = section.getDescription();
    }
}
