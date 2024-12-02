package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Data
@Table(name = "section")
public class Class extends CRUDEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;

    @ManyToOne
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;
}
