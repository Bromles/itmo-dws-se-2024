package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;
import vk.itmo.dws.enums.BookingStateEnum;

import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "booking")
public class Booking extends CRUDEntity{

    @Column(name = "state", nullable = false)
    private BookingStateEnum state;

    @Column(name = "date", nullable = false)
    private LocalDateTime date;

    @ManyToOne
    @JoinColumn(name = "class_id", nullable = false)
    private Class aClass;

    @ManyToOne
    @JoinColumn(name = "basket_id")
    private Basket basket;
}
