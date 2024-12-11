package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import java.time.LocalDateTime;
import java.time.Period;

@Entity
@Data
@Table(name = "abonement_usage")
@Getter
@Setter
public class AbonementUsage extends CRUDEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "abonement_id", nullable = false)
    private Abonement abonement;

    @Column(name = "activation_date", nullable = false)
    private LocalDateTime activationDate;

    @Column(name = "disable_date", nullable = false)
    private LocalDateTime disableDate;

    @Column(name = "classes_passed", nullable = false)
    private Long classesPassed;

}