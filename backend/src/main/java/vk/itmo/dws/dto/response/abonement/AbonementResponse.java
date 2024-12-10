package vk.itmo.dws.dto.response.abonement;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.booking.BookingResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;
import vk.itmo.dws.entity.Basket;

import java.time.Period;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AbonementResponse {
    private String title;
    private Period duration;
    private Long classesCount;
    private SectionShortResponse section;
    private Double price;


    public AbonementResponse(Abonement abonement) {
        this.title = abonement.getTitle();
        this.duration = abonement.getDuration();
        this.classesCount = abonement.getClassesCount();
        this.section = new SectionShortResponse(abonement.getSection());
        this.price = abonement.getPrice();
    }
}
