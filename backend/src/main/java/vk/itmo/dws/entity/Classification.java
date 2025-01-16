package vk.itmo.dws.entity;


import com.fasterxml.jackson.annotation.JsonBackReference;
import com.fasterxml.jackson.annotation.JsonManagedReference;
import jakarta.persistence.*;
import lombok.Data;

import java.util.ArrayList;
import java.util.List;

@Entity
@Data
@Table(name = "classification")
public class Classification {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @ManyToOne
    @JoinColumn(name = "parent_id")
    @JsonBackReference
    private Classification parent;

    @OneToMany(mappedBy = "parent", cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Classification> children = new ArrayList<>();

    @OneToMany(mappedBy = "classification", cascade = CascadeType.ALL)
    @JsonManagedReference
    private List<Option> options = new ArrayList<>();

    @JsonBackReference
    @ManyToMany(mappedBy = "classifications")
    private List<Section> sections;
}
