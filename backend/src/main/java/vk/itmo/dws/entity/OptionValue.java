package vk.itmo.dws.entity;

import jakarta.persistence.Embeddable;
import jakarta.persistence.EnumType;
import jakarta.persistence.Enumerated;
import lombok.Data;

@Embeddable
@Data
public class OptionValue {
    private String value;
}
