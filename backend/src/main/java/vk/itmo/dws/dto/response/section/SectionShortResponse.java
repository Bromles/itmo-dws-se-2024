package vk.itmo.dws.dto.response.section;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import org.w3c.dom.Text;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.classificatons.ClassificationsResponse;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.entity.Classification;
import vk.itmo.dws.entity.Section;

import java.time.LocalDate;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SectionShortResponse {
    protected Long id;
    protected String title;
    protected String avatar;
    protected List<Classification> classifications;

    public SectionShortResponse(Section section){
        this.id = section.getId();
        this.title = section.getTitle();
        this.avatar = section.getAvatar();
        this.classifications = section.getClassifications();
    }
}
