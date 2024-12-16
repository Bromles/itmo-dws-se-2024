package vk.itmo.dws.entity;

import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import lombok.Data;

import java.time.LocalDateTime;
import java.time.Period;
import java.util.List;

@Entity
@Data
@Table(name = "abonement")
public class Abonement extends CRUDEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @Nullable
    @Column(name = "duration", nullable = false)
    private Period duration;

    @Nullable
    @Column(name = "classes_count", nullable = false)
    private Long classesCount;

    @ManyToOne
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;

    @Column(name = "price", nullable = false)
    private Double price;

    @OneToMany(mappedBy = "abonement", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<AbonementUsage> usages;

    @ManyToMany
    @JoinTable(
            name = "abonement_classes",
            joinColumns = @JoinColumn(name = "abonement_id"),
            inverseJoinColumns = @JoinColumn(name = "class_id")
    )
    private List<Class> classes;

}
