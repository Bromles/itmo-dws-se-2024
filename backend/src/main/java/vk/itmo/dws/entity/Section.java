package vk.itmo.dws.entity;

import jakarta.annotation.Nullable;
import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;
import org.w3c.dom.Text;

import java.time.LocalDateTime;
import java.util.List;

@Getter
@Setter
@Entity
@Builder
@AllArgsConstructor
@NoArgsConstructor
@Accessors(chain = true)
@Table(name = "sections")
public class Section extends CRUDEntity{

    @Column(name = "title", nullable = false)
    private String title;

    @Column(name = "price", nullable = false)
    private Long price;

    @OneToMany(mappedBy = "section", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Class> classes;

    @OneToMany(mappedBy = "section", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Abonement> abonements;

    @Column(name = "avatar", nullable = true, columnDefinition = "TEXT")
    private String avatar;

    @ManyToMany
    @JoinTable(
            name = "section_classification",
            joinColumns = @JoinColumn(name = "section_id"),
            inverseJoinColumns = @JoinColumn(name = "classification_id")
    )
    private List<Classification> classifications;
}
