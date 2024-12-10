package vk.itmo.dws.dto.response.abonement;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;

import java.time.LocalDateTime;
import java.time.Period;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AbonementUsageResponse {
    private String title;
    private LocalDateTime activationDate;
    private LocalDateTime disableDate;
    private Long classesPassed;


    public AbonementUsageResponse(AbonementUsage abonementUsage) {
        this.title = abonementUsage.getAbonement().getTitle();
        this.activationDate = abonementUsage.getActivationDate();
        this.disableDate = abonementUsage.getDisableDate();
        this.classesPassed = abonementUsage.getClassesPassed();
    }
}
