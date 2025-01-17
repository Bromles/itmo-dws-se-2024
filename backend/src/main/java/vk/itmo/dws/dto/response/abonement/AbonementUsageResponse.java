package vk.itmo.dws.dto.response.abonement;

import jakarta.persistence.Column;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.section.SectionShortResponse;
import vk.itmo.dws.dto.response.users.UserResponse;
import vk.itmo.dws.entity.Abonement;
import vk.itmo.dws.entity.AbonementUsage;

import java.time.LocalDateTime;
import java.time.Period;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class AbonementUsageResponse {
    private String title;
    private String activationDate;
    private String disableDate;
    private Long classesPassed;
    //private UserResponse user;
    private SectionShortResponse section;

    private static final DateTimeFormatter formatter = DateTimeFormatter.ofPattern("dd-MM-yyyy HH:mm");

    public AbonementUsageResponse(AbonementUsage abonementUsage) {
        this.title = abonementUsage.getAbonement().getTitle();
        this.activationDate = formatDate(abonementUsage.getActivationDate());
        this.disableDate = formatDate(abonementUsage.getDisableDate());
        this.classesPassed = abonementUsage.getClassesPassed();
       // this.user = new UserResponse(abonementUsage.get());
        this.section = new SectionShortResponse(abonementUsage.getAbonement().getSection());
    }

    private String formatDate(LocalDateTime date) {
        return date != null ? date.format(formatter) : "� �������";
    }
}
