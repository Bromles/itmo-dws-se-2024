package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.modelmapper.ModelMapper;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.stereotype.Service;
import vk.itmo.dws.dto.request.basket.AddToBasketRequest;
import vk.itmo.dws.dto.request.basket.RemoveFromBasketRequest;
import vk.itmo.dws.entity.*;
import vk.itmo.dws.entity.Class;
import vk.itmo.dws.enums.BookingStateEnum;
import vk.itmo.dws.exception.ClassAlreadyBoughtException;
import vk.itmo.dws.repository.*;

import java.time.LocalDateTime;
import java.util.*;

@Service
@RequiredArgsConstructor
public class BasketService implements vk.itmo.dws.contracts.BasketService {
    private final BasketRepository basketRepository;
    private final BookingRepository bookingRepository;
    private final ClassesRepository classesRepository;
    private final UserRepository userRepository;



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
    public Basket addToBasket(Long classId) {
        Basket basket = this.findByUserId(1L).orElseThrow();

        Class aClass = classesRepository.findById(classId).orElseThrow();

        boolean classAlreadyAdded = basket.getBookings().stream()
                .anyMatch(booking -> booking.getAClass().getId().equals(aClass.getId()));
        User user = userRepository.findById(1L).orElseThrow();

        if(user.getClasses().contains(aClass)) {
            throw new IllegalArgumentException("Вы уже записаны на это занятие.");
        }
        if (classAlreadyAdded) {
            throw new ClassAlreadyBoughtException("Этот класс уже добавлен в корзину.");
        }

        Booking booking = new Booking();
        booking.setAClass(aClass);
        booking.setBasket(basket);
        booking.setDate(LocalDateTime.now());
        booking.setState(BookingStateEnum.REVIEW);

        bookingRepository.save(booking);

        List<Booking> bookings = basket.getBookings();
        bookings.add(booking);
        basket.setBookings(bookings);

        basketRepository.save(basket);

        return basket;
    }

    @Override
    public Basket removeFromBasket(Long bookingId) {
        Basket basket = this.findByUserId(1L).orElseThrow();
        List<Booking> bookings  = basket.getBookings();
        Booking booking = bookingRepository.findById(bookingId).orElseThrow();
        if(bookings.contains(booking)) {
            bookings.remove(booking);
            basket.setBookings(bookings);
            basketRepository.save(basket);
        }
        booking.setBasket(null);
        bookingRepository.save(booking);
        return basket;
    }

    @Override
    public void payAllBasket() {
        Basket basket = this.findByUserId(1L).orElseThrow();
        List<Booking> bookings = basket.getBookings();
        User user = userRepository.findById(1L).orElseThrow();
        List<Class> allClasses = new ArrayList<>();
        for (Booking booking : bookings) {
            allClasses.add(booking.getAClass());
            this.removeFromBasket(booking.getId());
        }
        user.setClasses(allClasses);

        userRepository.save(user);
    }

}
