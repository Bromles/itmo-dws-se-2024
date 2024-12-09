package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;

import java.util.List;

@Entity
@Data
@Table(name = "basket")
public class Basket extends CRUDEntity{

    @OneToMany(mappedBy = "basket", cascade = CascadeType.ALL, fetch = FetchType.LAZY)
    private List<Booking> bookings;

    private Long userId;
}
