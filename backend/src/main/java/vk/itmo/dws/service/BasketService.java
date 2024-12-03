package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.apache.catalina.User;
import org.modelmapper.ModelMapper;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.entity.Basket;
import vk.itmo.dws.entity.Booking;
import vk.itmo.dws.entity.Section;
import vk.itmo.dws.repository.BasketRepository;
import vk.itmo.dws.repository.BookingRepository;
import vk.itmo.dws.repository.SectionRepository;

import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.Optional;

@Service
@RequiredArgsConstructor
public class BasketService implements vk.itmo.dws.contracts.BasketService {
    private final SectionRepository sectionRepository;
    protected ModelMapper mapper = new ModelMapper();
    private final BasketRepository basketRepository;
    private final BookingRepository bookingRepository;


    @Override
    public Collection<Basket> findAll(Map<String, String> filter) {
        return null;
    }

    @Override
    public Optional<Basket> findById(Long id) {
        return basketRepository.findById(1L);
    }

    public Optional<Basket> findByUserId(Long id) {
        return basketRepository.findByUserId(1L);
    }

    @Override
    public Basket addToBasket(Long sectionId) {
        Basket basket = this.findByUserId(1L).orElseThrow();
        Section section = sectionRepository.findById(sectionId).orElseThrow();
        Booking booking = new Booking();
        booking.setSection(section);
        booking.setBasket(basket);
        bookingRepository.save(booking);
        List<Booking> bookings = basket.getBookings();
        bookings.add(booking);
        basket.setBookings(bookings);
        basketRepository.save(basket);
        return null;
    }

    @Override
    public Basket removeFromBasket(RemoveFromBasketRequest taskData) {
        Basket basket = this.findByUserId(1L).orElseThrow();
        List<Booking> bookings  = basket.getBookings();
        if(bookings.contains(taskData.getBooking())) {
            bookings.remove(taskData.getBooking());
            basket.setBookings(bookings);
            basketRepository.save(basket);
        }
        return null;
    }
}
