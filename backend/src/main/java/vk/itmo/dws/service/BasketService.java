package vk.itmo.dws.service;

import lombok.RequiredArgsConstructor;
import org.springframework.stereotype.Service;
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
    private final UserService userService;




    @Override
    public Collection<Basket> findAll(Map<String, String> filter) {
        return null;
    }

    @Override
    public Optional<Basket> findById(Long id) {
        return basketRepository.findById(1L);
    }

    public Optional<Basket> findByUserId(UUID id) {
        return basketRepository.findByUserId(id);
    }

    @Override
    public Basket addToBasket(Long classId) {
        var t =  SecurityWorkspace.getAuthUserId();
        Optional<User> userOptional = userService.findById(SecurityWorkspace.getAuthUserId());
        User user;
        if(userOptional.isEmpty()){
            user = userService.editUser(SecurityWorkspace.getAuthUser());
        }

        Basket basket = this.findByUserId(SecurityWorkspace.getAuthUserId()).orElseThrow();

        Class aClass = classesRepository.findById(classId).orElseThrow();

        List<Booking> exisingBookings = basket.getBookings();
        if(exisingBookings != null) {
            boolean classAlreadyAdded = exisingBookings.stream()
                    .anyMatch(booking -> booking.getAClass().getId().equals(aClass.getId()));

            if (classesRepository.findByUserId(SecurityWorkspace.getAuthUserId()).contains(aClass)) {
                throw new IllegalArgumentException("Вы уже записаны на это занятие.");
            }
            if (classAlreadyAdded) {
                throw new ClassAlreadyBoughtException("Этот класс уже добавлен в корзину.");
            }
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
        Basket basket = this.findByUserId(SecurityWorkspace.getAuthUserId()).orElseThrow();
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
        Optional<User> userOptional = userService.findById(SecurityWorkspace.getAuthUserId());
        User user;
        user = userOptional.orElseGet(() -> userService.editUser(SecurityWorkspace.getAuthUser()));

        Basket basket = this.findByUserId(user.getId()).orElseThrow();
        List<Booking> bookings = basket.getBookings();

        List<Class> classes = user.getClasses();
        for (Booking booking : bookings) {
            classes.add(booking.getAClass());
        }
        userService.editUser(user);
        bookings.forEach(booking -> this.removeFromBasket(booking.getId()));
    }

}
