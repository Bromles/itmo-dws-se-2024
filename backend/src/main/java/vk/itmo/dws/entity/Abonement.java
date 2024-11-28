package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.time.Period;

@Entity
@Data
@Table(name = "abonement")
public class Abonement extends CRUDEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "duration", nullable = false)
    private Period duration;

    @ManyToOne
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;

    @Column(name = "activationDate", nullable = false)
    private LocalDateTime activationDate;

    @Column(name = "price", nullable = false)
    private Double price;
}
