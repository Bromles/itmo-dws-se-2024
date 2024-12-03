package vk.itmo.dws.dto.request.basket;

import lombok.Data;
import vk.itmo.dws.entity.Booking;

@Data
public class RemoveFromBasketRequest {
    protected Booking booking;

}
