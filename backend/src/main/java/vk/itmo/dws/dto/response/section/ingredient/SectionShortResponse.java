package vk.itmo.dws.dto.response.section.ingredient;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

import java.time.LocalDate;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class SectionShortResponse {
    protected Long id;
    protected String title;
}
