package vk.itmo.dws.entity;

import com.fasterxml.jackson.annotation.JsonBackReference;
import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "option")
public class Option {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String key;
    private String value;

    @Enumerated(EnumType.STRING)
    private OptionType type;

    @ManyToOne
    @JoinColumn(name = "classification_id")
    @JsonBackReference
    private Classification classification;
}

enum OptionType {
    NUMERIC, STRING, ENUM
}
