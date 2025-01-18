package vk.itmo.dws.dto.response.section;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.abonement.AbonementResponse;
import vk.itmo.dws.dto.response.classes.ClassResponse;
import vk.itmo.dws.dto.response.classificatons.ClassificationsResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.Section;

import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SectionCardResponse extends SectionShortResponse{
    protected List<ClassResponse> classes;
    protected List<AbonementResponse> abonements;
    protected Long price;

    public SectionCardResponse(Section section){
        super(section);
        this.classes = section.getClasses().stream().map(ClassResponse::new).toList();
        this.price = section.getPrice()/100;
        this.abonements = section.getAbonements().stream().map(AbonementResponse::new).toList();
    }
}
