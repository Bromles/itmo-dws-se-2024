package vk.itmo.dws.dto.response.basket;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import vk.itmo.dws.dto.response.booking.BookingResponse;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.Booking;

import java.awt.print.Book;
import java.util.List;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class BasketResponse {
    protected List<BookingResponse> bookings;


    public BasketResponse(Basket basket) {
        this.bookings = basket.getBookings().stream().map(BookingResponse::new).toList();
    }
}
