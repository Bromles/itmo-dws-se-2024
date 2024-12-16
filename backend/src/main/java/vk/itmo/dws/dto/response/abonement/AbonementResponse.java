package vk.itmo.dws.dto.response.abonement;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.account.UserResponseDto;
import vk.itmo.dws.dto.response.booking.BookingResponse;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.dto.response.users.ShortUserResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.User;
import vk.itmo.dws.utils.PeriodFormatterService;

import java.time.Period;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AbonementResponse {
    private Long id;
    private String title;
    private String duration;
    private Long classesCount;
    private SectionShortResponse section;
    private Double price;
    private List<AbonementUsageResponse> usages;

    public AbonementResponse(Abonement abonement) {
        this.id = abonement.getId();
        this.title = abonement.getTitle();
        this.duration = PeriodFormatterService.formatPeriod(abonement.getDuration());
        this.classesCount = abonement.getClassesCount();
        this.section = new SectionShortResponse(abonement.getSection());
        this.price = abonement.getPrice();
        this.usages = abonement.getUsages().stream().map(AbonementUsageResponse::new).toList();
    }
}
