package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "classes")
public class Class extends CRUDEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "title", nullable = false)
    private String title;

    @ManyToOne
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;
}