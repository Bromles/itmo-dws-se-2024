package vk.itmo.dws.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Builder;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;
import vk.itmo.dws.enums.ComparisonOperator;
import vk.itmo.dws.enums.OptionType;

@Entity
@Data
@Table(name = "option")
@Setter
@Getter
public class Option {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String key;

    private String value;

    @Enumerated(EnumType.STRING)
    private ComparisonOperator operator;

    @Enumerated(EnumType.STRING)
    private OptionType type;

    @ManyToOne
    @JoinColumn(name = "classification_id")
    @JsonBackReference
    private Classification classification;
}

