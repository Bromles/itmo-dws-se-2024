package vk.itmo.dws.dto.response.abonement;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.account.UserResponseDto;
import vk.itmo.dws.dto.response.booking.BookingResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.User;

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
    private List<UserResponseDto> users;


    public AbonementResponse(Abonement abonement) {
        this.title = abonement.getTitle();
        this.duration = abonement.getDuration();
        this.classesCount = abonement.getClassesCount();
        this.section = new SectionShortResponse(abonement.getSection());
        this.price = abonement.getPrice();
       // this.users = abonement.getUsages().stream().map((abonementUsage) -> new UserResponseDto(abonementUsage.getUser())).toList();
    }
}
