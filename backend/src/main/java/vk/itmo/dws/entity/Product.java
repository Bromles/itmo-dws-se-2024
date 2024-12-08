package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;
import vk.itmo.dws.service.Reviewable;

@Entity
@Data
@Table(name = "product")
public class Product implements Reviewable {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    private String name;

    @Override
    public EntityType getType() {
        return EntityType.PRODUCT;
    }
}
