package vk.itmo.dws.entity;

import jakarta.persistence.*;
import lombok.Data;
import vk.itmo.dws.enums.BookingStateEnum;

import java.time.LocalDateTime;

@Entity
@Data
@Table(name = "booking")
public class Booking extends CRUDEntity{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "state", nullable = false)
    private BookingStateEnum state;

    @Column(name = "date", nullable = false)
    private LocalDateTime date;

    @ManyToOne
    @JoinColumn(name = "section_id", nullable = false)
    private Section section;

    @ManyToOne
    @JoinColumn(name = "basket_id")
    private Basket basket;
}
