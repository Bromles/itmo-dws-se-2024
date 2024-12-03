package vk.itmo.dws.dto.response.basket;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.entity.Booking;

import java.awt.print.Book;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BasketResponse {
    protected Long id;
    protected List<Booking> bookings;
}
