package vk.itmo.dws.contracts;


import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.entity.Basket;

import java.util.Collection;
import java.util.Map;
import java.util.Optional;
import java.util.UUID;

public interface BasketService extends SearchService<Basket> {
    Collection<Basket> findAll(Map<String, String> filter);

    Optional<Basket> findById(Long id);
    Optional<Basket> findByUserId(UUID userId);


    Basket addToBasket(Long sectionId);

    Basket removeFromBasket(Long bookingId);

    void payAllBasket();

}
