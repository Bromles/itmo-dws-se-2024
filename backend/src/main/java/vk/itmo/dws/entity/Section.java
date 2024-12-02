package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.*;
import lombok.experimental.Accessors;

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

}
