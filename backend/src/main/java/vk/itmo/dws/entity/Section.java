package vk.itmo.dws.entity;

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

    @Column(name = "description", nullable = false, columnDefinition = "TEXT")
    private String description;

    @OneToMany(mappedBy = "section", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Class> classes;
}
